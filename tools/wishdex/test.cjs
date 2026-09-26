// Run with Node + Playwright: node tools/wishdex/test.cjs [playwright module path]
const assert = require('node:assert/strict');
const fs = require('node:fs');
const http = require('node:http');
const path = require('node:path');
const { chromium } = require(process.argv[2] || 'playwright');

const root = path.resolve(__dirname, '../..');
const contentTypes = { '.html': 'text/html', '.js': 'text/javascript', '.css': 'text/css',
    '.png': 'image/png', '.ico': 'image/x-icon', '.svg': 'image/svg+xml', '.mp4': 'video/mp4' };
const server = http.createServer((request, response) => {
    const pathname = decodeURIComponent(new URL(request.url, 'http://localhost').pathname);
    const file = path.resolve(root, '.' + (pathname === '/' ? '/index.html' : pathname));
    if (!file.startsWith(root + path.sep) || !contentTypes[path.extname(file)] || !fs.existsSync(file)) {
        response.writeHead(404).end();
        return;
    }
    response.writeHead(200, { 'Content-Type': contentTypes[path.extname(file)] });
    fs.createReadStream(file).pipe(response);
});

(async () => {
    let browser;
    try {
        await new Promise(resolve => server.listen(0, '127.0.0.1', resolve));
        const base = 'http://127.0.0.1:' + server.address().port;
        browser = await chromium.launch({ headless: true,
            ...(process.argv[4] ? { executablePath: process.argv[4] } : {}) });
        const page = await browser.newPage({ viewport: { width: 1200, height: 1000 } });
        const errors = [];
        const missing = [];
        page.on('pageerror', error => errors.push(error.message));
        page.on('response', response => {
            if (response.url().startsWith(base) && response.status() >= 400) missing.push(response.url());
        });
        // Tests are local: exclude unrelated analytics, fonts, and donation widgets.
        await page.route('**/*', route => route.request().url().startsWith(base) ? route.continue() : route.abort());
        await page.addInitScript(() => { window.kofiwidget2 = { init() {}, getHTML() { return ''; } }; });
        await page.goto(base + '/wishdex.html');
        const data = await page.evaluate(() => window.WISHDEX_DATA);
        const visible = data.filter(pokemon => !pokemon.hidden);
        assert.equal(data.length, 100);
        assert.equal(visible.length, 98);
        assert.equal(await page.locator('.pokemon-card').count(), 100);
        assert.equal(await page.locator('button.pokemon-card').count(), 98);
        assert.equal(await page.locator('.pokemon-card-hidden').count(), 2);
        assert(!JSON.stringify(data).match(/Salamence|Quagsire/i));
        for (const hidden of data.filter(pokemon => pokemon.hidden)) {
            assert.deepEqual(Object.keys(hidden).sort(), ['hidden', 'id', 'sprite']);
        }

        let shinies = 0;
        const modal = page.locator('#pokemon-modal');
        for (const pokemon of visible) {
            const card = page.locator('[data-pokemon-id="' + pokemon.id + '"]');
            await card.click();
            assert(await modal.isVisible(), pokemon.name + ' opens');
            assert.equal(await page.locator('#modal-pokemon-name').textContent(), pokemon.name);
            assert.equal(await page.locator('.stat-value').allTextContents().then(values => values.join(',')),
                [pokemon.hp, pokemon.attack, pokemon.defense, pokemon.spAttack, pokemon.spDefense, pokemon.speed].join(','));
            assert.equal(await page.locator('.move-item').count(), pokemon.moveset.length);
            assert.equal(await page.locator('.type').allTextContents().then(values => values.join(',')), pokemon.types.join(','));
            assert.equal(await page.locator('#modal-sprite').getAttribute('src'), pokemon.sprite);
            assert.equal(await page.evaluate(() => document.activeElement.className), 'close-modal');
            if (pokemon.shinySprite) {
                const button = page.locator('#shiny-toggle-btn');
                await button.click({ force: true });
                assert.equal(await page.locator('#modal-sprite').getAttribute('src'), pokemon.shinySprite);
                assert.equal(await button.getAttribute('aria-pressed'), 'true');
                await button.click({ force: true });
                assert.equal(await page.locator('#modal-sprite').getAttribute('src'), pokemon.sprite);
                shinies++;
            } else {
                assert.equal(await page.locator('#shiny-toggle-btn').count(), 0);
            }
            await page.keyboard.press('Escape');
            assert(!await modal.isVisible(), pokemon.name + ' closes');
            assert.equal(await page.evaluate(() => document.activeElement.dataset.pokemonId), String(pokemon.id));
            if ([25, 50, 75, 98].includes(visible.indexOf(pokemon) + 1)) {
                console.log('Profiles checked: ' + (visible.indexOf(pokemon) + 1));
            }
        }

        const first = page.locator('[data-pokemon-id="1"]');
        await first.hover();
        assert.equal(await first.locator('img').getAttribute('src'), visible[0].frameSprite);
        await first.focus();
        await page.keyboard.press('Enter');
        await page.keyboard.press('Tab');
        assert.equal(await page.evaluate(() => document.activeElement.id), 'shiny-toggle-btn');
        await page.keyboard.press('Tab');
        assert.equal(await page.evaluate(() => document.activeElement.className), 'close-modal');
        await page.keyboard.press('Shift+Tab');
        assert.equal(await page.evaluate(() => document.activeElement.id), 'shiny-toggle-btn');
        await page.locator('.close-modal').click();
        assert(!await modal.isVisible());
        await first.click();
        await page.mouse.click(2, 2);
        assert(!await modal.isVisible(), 'backdrop closes');
        await page.mouse.move(0, 0);
        await page.locator('.wishdex-title').click();
        assert.equal(await first.locator('img').getAttribute('src'), visible[0].sprite);

        for (let i = 0; i < 2; i++) {
            const hidden = page.locator('.pokemon-card-hidden').nth(i);
            assert.equal(await hidden.locator('img').getAttribute('alt'), 'Undiscovered Wish form');
            assert.equal(await hidden.getAttribute('data-pokemon-id'), null);
            await hidden.click();
            assert(!await modal.isVisible(), 'hidden entry does not open');
            assert.equal(await hidden.evaluate(element => getComputedStyle(element).cursor), 'default');
        }

        await page.evaluate(() => document.body.classList.add('light-mode'));
        await first.click();
        assert.equal(await page.locator('#modal-pokemon-name').evaluate(element => getComputedStyle(element).color), 'rgb(44, 62, 80)');
        await page.keyboard.press('Escape');
        await page.evaluate(() => { document.body.classList.remove('light-mode'); document.body.style.overflow = 'scroll'; });
        await first.click();
        await page.keyboard.press('Escape');
        assert.equal(await page.evaluate(() => document.body.style.overflow), 'scroll');

        if (process.argv[3]) {
            await page.evaluate(() => { window.scrollTo(0, 0); document.body.style.overflow = ''; });
            await page.screenshot({ path: path.join(process.argv[3], 'wishdex-desktop.png'), animations: 'disabled' });
            await first.click();
            await page.screenshot({ path: path.join(process.argv[3], 'wishdex-profile.png'), animations: 'disabled' });
            await page.keyboard.press('Escape');
        }
        await page.setViewportSize({ width: 390, height: 844 });
        await first.click();
        const bounds = await page.locator('.modal-content').boundingBox();
        assert(bounds.x >= 0 && bounds.x + bounds.width <= 391, 'mobile dialog fits viewport');
        assert(bounds.y >= 0 && bounds.y + bounds.height <= 845, 'mobile dialog fits vertically');
        await page.locator('#shiny-toggle-btn').click();
        if (process.argv[3]) await page.screenshot({ path: path.join(process.argv[3], 'wishdex-mobile.png'), animations: 'disabled' });
        await page.locator('.close-modal').click();
        assert.deepEqual(errors, [], 'no WishDex JavaScript errors');
        assert.deepEqual(missing, [], 'no missing WishDex assets');

        // The shared home-page script must retain its working controls.
        await page.goto(base + '/index.html');
        // Font Awesome is intentionally offline. Give its empty icon spans
        // their usual footprint so icon-only buttons still have a hit area.
        await page.addStyleTag({ content: '.fas { display: inline-block; width: 1em; height: 1em; }' });
        await page.locator('#hamburger').click();
        assert.equal(await page.locator('#hamburger').getAttribute('aria-expanded'), 'true');
        await page.locator('#hamburger').click();
        assert.equal(await page.locator('#hamburger').getAttribute('aria-expanded'), 'false');
        await page.setViewportSize({ width: 1200, height: 1000 });
        await page.waitForFunction(() => document.getElementById('slideshow-image').src.includes('Pokemon_HLW-0.png'));
        // Screenshots 1 and 2 are absent in the existing repo. Exercise the
        // available 0 <-> 18 wraparound without changing the shared slideshow.
        await page.locator('#prev-slide').click();
        await page.waitForFunction(() => document.getElementById('slideshow-image').src.includes('Pokemon_HLW-18.png'));
        await page.waitForTimeout(200); // Respect the shared script's click guard.
        await page.locator('#next-slide').click();
        await page.waitForFunction(() => document.getElementById('slideshow-image').src.includes('Pokemon_HLW-0.png'));
        assert.deepEqual(errors, [], 'no JavaScript errors');
        assert.deepEqual(missing.filter(url => !/\/Pokemon_HLW-[12]\.png$/.test(new URL(url).pathname)),
            [], 'no new missing local assets');
        console.log(`PASS: 98 profiles, ${shinies} shiny toggles, 2 protected silhouettes, hover, keyboard/focus, close controls, mobile/light mode, navigation/slideshow, all assets.`);
    } finally {
        if (browser) await browser.close();
        await new Promise(resolve => server.close(resolve));
    }
})().catch(error => { console.error(error); process.exitCode = 1; });
