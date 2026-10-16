// WishDex interactions are independent of the shared navigation/slideshow.
(function () {
    'use strict';

    function initWishDex() {
        const modal = document.getElementById('pokemon-modal');
        const modalBody = document.getElementById('modal-body');
        const closeButton = document.querySelector('.close-modal');
        if (!modal || !modalBody || !closeButton || !Array.isArray(window.WISHDEX_DATA)) return;

        // Hidden records have no profiles and can never open a dialog.
        const pokemonById = new Map(window.WISHDEX_DATA
            .filter(function (pokemon) { return !pokemon.hidden; })
            .map(function (pokemon) { return [String(pokemon.id), pokemon]; }));
        let previousFocus = null;
        let previousOverflow = '';
        let isOpen = false;

        function escapeHtml(value) {
            return String(value).replace(/[&<>"']/g, function (character) {
                return { '&': '&amp;', '<': '&lt;', '>': '&gt;', '"': '&quot;', "'": '&#39;' }[character];
            });
        }

        function renderPokemon(pokemon) {
            const stats = [
                ['HP', pokemon.hp], ['Attack', pokemon.attack], ['Defense', pokemon.defense],
                ['Sp. Attack', pokemon.spAttack], ['Sp. Defense', pokemon.spDefense], ['Speed', pokemon.speed]
            ];
            const statHtml = stats.map(function (stat) {
                const percentage = Math.max(0, Math.min(255, Number(stat[1]))) / 255 * 100;
                return '<div class="stat"><span class="stat-name">' + stat[0] + '</span>' +
                    '<span class="stat-value">' + escapeHtml(stat[1]) + '</span>' +
                    '<div class="stat-bar" aria-hidden="true"><div class="stat-fill" style="width: ' +
                    percentage + '%;"></div></div></div>';
            }).join('');
            const evolutionHtml = pokemon.evolutions.length
                ? pokemon.evolutions.map(function (evolution) {
                    return '<p>' + escapeHtml(evolution.method) + ' → ' + escapeHtml(evolution.target) + '</p>';
                }).join('')
                : '<p>Fully evolved</p>';
            const movesHtml = pokemon.moveset.map(function (move) {
                const level = move.level === 0 ? 'On evolution' : 'Lv. ' + move.level;
                return '<div class="move-item"><span class="move-level">' + escapeHtml(level) +
                    '</span><span class="move-name">' + escapeHtml(move.move) + '</span></div>';
            }).join('');
            const typesHtml = pokemon.types.map(function (type) {
                return '<span class="type type-' + escapeHtml(type.toLowerCase()) + '">' + escapeHtml(type) + '</span>';
            }).join('');
            const shinyHtml = pokemon.shinySprite
                ? '<button type="button" class="shiny-toggle" id="shiny-toggle-btn" ' +
                  'aria-label="Show shiny form" aria-pressed="false" title="Show shiny form">' +
                  '<span aria-hidden="true">✦</span></button>'
                : '';
            return '<div class="pokemon-info-card">' +
                '<div class="pokemon-info-header"><div class="pokemon-sprite-large">' +
                '<img id="modal-sprite" src="' + escapeHtml(pokemon.sprite) + '" alt="' +
                escapeHtml(pokemon.name) + '" width="64" height="64">' + shinyHtml + '</div>' +
                '<div class="pokemon-title"><h2 id="modal-pokemon-name">' + escapeHtml(pokemon.name) + '</h2>' +
                '<p class="species">' + escapeHtml(pokemon.species) + '</p><div class="types">' + typesHtml + '</div></div></div>' +
                '<div class="pokemon-description"><h3>Description</h3><p>' + escapeHtml(pokemon.description) + '</p></div>' +
                '<div class="pokemon-stats"><h3>Base Stats</h3><div class="stats-grid">' + statHtml + '</div></div>' +
                '<div class="pokemon-moveset"><h3>Level-up Learnset</h3><div class="moveset-grid">' + movesHtml + '</div></div>' +
                '<div class="pokemon-details">' +
                '<div class="detail-item"><h4>Height</h4><p>' + escapeHtml(pokemon.height) + '</p></div>' +
                '<div class="detail-item"><h4>Weight</h4><p>' + escapeHtml(pokemon.weight) + '</p></div>' +
                '<div class="detail-item"><h4>Abilities</h4><p>' + escapeHtml(pokemon.abilities.join(', ')) + '</p></div>' +
                '<div class="detail-item"><h4>Evolution</h4>' + evolutionHtml + '</div></div></div>';
        }

        function openModal(id, card) {
            const pokemon = pokemonById.get(String(id));
            if (!pokemon) return;
            if (!isOpen) {
                previousFocus = card || document.activeElement;
                previousOverflow = document.body.style.overflow;
            }
            modalBody.innerHTML = renderPokemon(pokemon);
            modal.style.display = 'flex';
            modal.setAttribute('aria-hidden', 'false');
            document.body.style.overflow = 'hidden';
            isOpen = true;
            modal.querySelector('.modal-content').scrollTop = 0;
            closeButton.focus();

            const shinyButton = document.getElementById('shiny-toggle-btn');
            const modalSprite = document.getElementById('modal-sprite');
            if (shinyButton && modalSprite) {
                shinyButton.addEventListener('click', function () {
                    const shiny = shinyButton.getAttribute('aria-pressed') !== 'true';
                    modalSprite.src = shiny ? pokemon.shinySprite : pokemon.sprite;
                    modalSprite.alt = (shiny ? 'Shiny ' : '') + pokemon.name;
                    shinyButton.classList.toggle('active', shiny);
                    shinyButton.setAttribute('aria-pressed', String(shiny));
                    const label = shiny ? 'Show normal form' : 'Show shiny form';
                    shinyButton.setAttribute('aria-label', label);
                    shinyButton.title = label;
                });
            }
        }

        function closeModal() {
            if (!isOpen) return;
            modal.style.display = 'none';
            modal.setAttribute('aria-hidden', 'true');
            document.body.style.overflow = previousOverflow;
            isOpen = false;
            // Clear the old profile, including its shiny-button listener.
            modalBody.innerHTML = '';
            if (previousFocus) previousFocus.focus();
        }

        document.querySelectorAll('.pokemon-card[data-pokemon-id]').forEach(function (card) {
            card.addEventListener('click', function () { openModal(card.dataset.pokemonId, card); });
            const sprite = card.querySelector('.pokemon-sprite');
            if (!sprite || !sprite.dataset.normal || !sprite.dataset.frame) return;
            function showFrame() { sprite.src = sprite.dataset.frame; }
            function showNormal() { sprite.src = sprite.dataset.normal; }
            card.addEventListener('mouseenter', showFrame);
            card.addEventListener('mouseleave', showNormal);
            card.addEventListener('focus', showFrame);
            card.addEventListener('blur', showNormal);
        });
        closeButton.addEventListener('click', closeModal);
        modal.addEventListener('click', function (event) {
            if (event.target === modal) closeModal();
        });
        document.addEventListener('keydown', function (event) {
            if (!isOpen) return;
            if (event.key === 'Escape') {
                event.preventDefault();
                closeModal();
            } else if (event.key === 'Tab') {
                const focusable = Array.from(modal.querySelectorAll('button, [href], [tabindex="0"]'));
                const first = focusable[0];
                const last = focusable[focusable.length - 1];
                if (event.shiftKey && document.activeElement === first) {
                    event.preventDefault();
                    last.focus();
                } else if (!event.shiftKey && document.activeElement === last) {
                    event.preventDefault();
                    first.focus();
                }
            }
        });
    }

    if (document.readyState === 'loading') {
        document.addEventListener('DOMContentLoaded', initWishDex, { once: true });
    } else {
        initWishDex();
    }
})();
