// ===== THEME TOGGLE =====
const themeToggle = document.getElementById('themeToggle');
const body = document.body;

function applyTheme(theme) {
    if (theme === 'light') {
        body.classList.add('light-mode');
        if (themeToggle) themeToggle.innerHTML = '<i class="fas fa-moon"></i> Dark Mode';
        localStorage.setItem('theme', 'light');
    } else {
        body.classList.remove('light-mode');
        if (themeToggle) themeToggle.innerHTML = '<i class="fas fa-sun"></i> Light Mode'; 
        localStorage.setItem('theme', 'dark');
    }
}

const savedTheme = localStorage.getItem('theme') || 'dark';
applyTheme(savedTheme);

if (themeToggle) {
    themeToggle.addEventListener('click', () => {
        if (body.classList.contains('light-mode')) {
            applyTheme('dark');
        } else {
            applyTheme('light');
        }
    });
}

// ===== SMOOTH SCROLLING =====
document.querySelectorAll('a[href^="#"]').forEach(anchor => {
    anchor.addEventListener('click', function (e) {
        e.preventDefault();
        const target = document.querySelector(this.getAttribute('href'));
        if (target) {
            target.scrollIntoView({ behavior: 'smooth' });
        }
    });
});

// ===== SLIDESHOW =====
const slideshowElement = document.getElementById('slideshow-image');
if (slideshowElement) {
    const slideshowImages = [
        'pokeemerald-0.png', 'pokeemerald-1.png', 'pokeemerald-2.png',
        'pokeemerald-3.png', 'pokeemerald-4.png', 'pokeemerald-5.png',
        'pokeemerald-6.png', 'pokeemerald-7.png', 'pokeemerald-8.png',
        'pokeemerald-9.png', 'pokeemerald-10.png', 'pokeemerald-11.png',
        'pokeemerald-12.png', 'pokeemerald-13.png', 'pokeemerald-14.png',
        'pokeemerald-15.png', 'pokeemerald-16.png', 'pokeemerald-17.png',
        'pokeemerald-18.png'
    ];

    let currentSlide = 0;
    let autoPlayInterval;

    function updateSlide() {
        slideshowElement.src = `images/screenshots/${slideshowImages[currentSlide]}`;
    }

    function nextSlide() {
        currentSlide = (currentSlide + 1) % slideshowImages.length;
        updateSlide();
    }

    function prevSlide() {
        currentSlide = (currentSlide - 1 + slideshowImages.length) % slideshowImages.length;
        updateSlide();
    }

    autoPlayInterval = setInterval(nextSlide, 3000);

    document.getElementById('next-slide')?.addEventListener('click', () => {
        clearInterval(autoPlayInterval);
        nextSlide();
        setTimeout(() => { autoPlayInterval = setInterval(nextSlide, 3000); }, 5000);
    });

    document.getElementById('prev-slide')?.addEventListener('click', () => {
        clearInterval(autoPlayInterval);
        prevSlide();
        setTimeout(() => { autoPlayInterval = setInterval(nextSlide, 3000); }, 5000);
    });
}

// ===== MOBILE MENU =====
const hamburger = document.getElementById('hamburger');
const navLinks = document.getElementById('nav-links');

if (hamburger && navLinks) {
    hamburger.addEventListener('click', () => { navLinks.classList.toggle('active'); });
    document.querySelectorAll('.nav-links a').forEach(link => {
        link.addEventListener('click', () => { navLinks.classList.remove('active'); });
    });
}

// ===== VISITOR COUNTER =====
fetch('https://api.counterapi.dev/v1/hoennslastwish/site/up')
    .then(response => response.json())
    .then(data => console.log('📊 Total de visitas:', data.count))
    .catch(error => console.log('Erro no contador:', error));

// ===== HEADER ANIMATION =====
function initHeaderAnimation() {
    const headerImg = document.querySelector('.animated-header-img');
    if (!headerImg) return;
    const normalSrc = headerImg.dataset.normal;
    const hoverSrc = headerImg.dataset.hover;
    if (normalSrc && hoverSrc) {
        headerImg.addEventListener('mouseenter', () => headerImg.src = hoverSrc);
        headerImg.addEventListener('mouseleave', () => headerImg.src = normalSrc);
    }
}

// ===== WISHDEX HOVER - TROCA A FRAME NO CARD TODO =====
function initWishDexHover() {
    document.querySelectorAll('.pokemon-card').forEach(card => {
        const sprite = card.querySelector('.pokemon-sprite');
        if (!sprite) return;
        
        const normalSrc = sprite.dataset.normal;
        const frameSrc = sprite.dataset.frame;
        
        if (normalSrc && frameSrc) {
            card.addEventListener('mouseenter', () => { sprite.src = frameSrc; });
            card.addEventListener('mouseleave', () => { sprite.src = normalSrc; });
        }
    });
}

// ===== POKÉMON DATA COM SHINY =====
const pokemonData = {
    // Bulbasaur Family (IDs 1-3)
    1: {
        id: 1, name: "Bulbasaur", species: "Toad Pokémon", 
        sprite: "images/wishdex/01.png",
        shinySprite: "images/wishdex/01-shiny.png",
        hp: 45, attack: 49, defense: 49, speed: 45, spAttack: 65, spDefense: 65,
        types: ["Water"], height: "0.7 m", weight: "6.9 kg",
        abilities: ["Torrent", "Swift Swim (Hidden)"],
        description: "It lounges in muddy banks where water and earth meet. Its moist skin draws nutrient rich mud into its body, and when threat approaches it burrows deep and surges out.",
        evolution: "Evolves at level 16", nextEvolution: "Ivysaur",
        moveset: [
            { level: 1, move: "Tackle" }, { level: 1, move: "Growl" },
            { level: 6, move: "Water Gun" }, { level: 9, move: "Mud-Slap" },
            { level: 12, move: "Tail Slap" }, { level: 15, move: "Mud Shot" },
            { level: 16, move: "Spikes" }, { level: 18, move: "Dig" },
            { level: 20, move: "Water Pulse" }, { level: 23, move: "Ancient Power" },
            { level: 25, move: "Take Down" }, { level: 27, move: "Aqua Ring" },
            { level: 30, move: "Muddy Water" }, { level: 31, move: "Soak" },
            { level: 35, move: "Earth Power" }, { level: 40, move: "Hydro Pump" },
            { level: 50, move: "Hyper Voice" }
        ]
    },
    2: {
        id: 2, name: "Ivysaur", species: "Toad Pokémon", 
        sprite: "images/wishdex/02.png",
        shinySprite: "images/wishdex/02-shiny.png",
        hp: 60, attack: 62, defense: 63, speed: 60, spAttack: 80, spDefense: 80,
        types: ["Water", "Ground"], height: "1.0 m", weight: "13.0 kg",
        abilities: ["Torrent", "Swift Swim (Hidden)"],
        description: "Its long tail helps it glide through muddy waters and balance on soft ground. It grows stronger by channeling the flow of earth and water through its sturdy body.",
        evolution: "Evolves at level 36", nextEvolution: "Venusaur",
        moveset: [
            { level: 1, move: "Tackle" }, { level: 1, move: "Growl" },
            { level: 1, move: "Water Gun" }, { level: 1, move: "Mud-Slap" },
            { level: 1, move: "Dig" }, { level: 12, move: "Mud Shot" },
            { level: 15, move: "Mud Sport" }, { level: 16, move: "Spikes" },
            { level: 18, move: "Bubble Beam" }, { level: 22, move: "Water Pulse" },
            { level: 24, move: "Ancient Power" }, { level: 26, move: "Take Down" },
            { level: 28, move: "Crunch" }, { level: 30, move: "Aqua Ring" },
            { level: 32, move: "Muddy Water" }, { level: 34, move: "Soak" },
            { level: 38, move: "Earth Power" }, { level: 44, move: "Rain Dance" },
            { level: 50, move: "Hydro Pump" }, { level: 52, move: "Headlong Rush" },
            { level: 60, move: "Hyper Voice" }
        ]
    },
    3: {
        id: 3, name: "Venusaur", species: "Seed Pokémon", 
        sprite: "images/wishdex/03.png",
        shinySprite: "images/wishdex/03-shiny.png",
        hp: 80, attack: 82, defense: 83, speed: 80, spAttack: 100, spDefense: 100,
        types: ["Water", "Ground"], height: "2.0 m", weight: "100.0 kg",
        abilities: ["Torrent", "Swift Swim (Hidden)"],
        description: "A massive fin rises from its back like an ancient spine, letting it swim through swamps and mangroves. Its mighty roar can shake the earth and split the ground.",
        evolution: "Fully evolved", nextEvolution: null,
        moveset: [
            { level: 1, move: "Ancient Power" }, { level: 1, move: "Crunch" },
            { level: 1, move: "Dig" }, { level: 1, move: "Growl" },
            { level: 1, move: "Water Gun" }, { level: 1, move: "Mud-Slap" },
            { level: 1, move: "Mud Shot" }, { level: 1, move: "Mud Sport" },
            { level: 1, move: "Aqua Ring" }, { level: 1, move: "Spikes" },
            { level: 1, move: "Roar" }, { level: 1, move: "Soak" },
            { level: 18, move: "Bubble Beam" }, { level: 22, move: "Water Pulse" },
            { level: 26, move: "Take Down" }, { level: 30, move: "Muddy Water" },
            { level: 36, move: "Earth Power" }, { level: 38, move: "Dragon Tail" },
            { level: 42, move: "Rain Dance" }, { level: 45, move: "Roar" },
            { level: 48, move: "Earthquake" }, { level: 54, move: "Hydro Pump" },
            { level: 56, move: "Headlong Rush" }, { level: 60, move: "Fissure" },
            { level: 65, move: "Hyper Voice" }
        ]
    }
};

// ===== VARIÁVEL GLOBAL PARA CONTROLAR O ESTADO SHINY =====
let currentShinyState = false;

// ===== RENDER MODAL (COM BOTÃO SHINY) =====
function renderPokemonModal(pokemon) {
    if (!pokemon) return '<div class="error">Pokémon not found!</div>';
    
    function renderStatBar(value, max = 255) {
        const percentage = (value / max) * 100;
        return `<div class="stat-bar"><div class="stat-fill" style="width: ${percentage}%;"></div></div>`;
    }
    
    // Gerar lista de moveset
    let movesetHtml = '';
    if (pokemon.moveset && pokemon.moveset.length > 0) {
        movesetHtml = `
            <div class="pokemon-moveset">
                <h3>Learnset</h3>
                <div class="moveset-grid">
                    ${pokemon.moveset.map(move => `<div class="move-item"><span class="move-level">Lv. ${move.level}</span><span class="move-name">${move.move}</span></div>`).join('')}
                </div>
            </div>
        `;
    }
    
    return `
        <div class="pokemon-info-card">
            <div class="pokemon-info-header">
                <div class="pokemon-sprite-large">
                    <img id="modal-sprite" src="${pokemon.sprite}" alt="${pokemon.name}" data-normal="${pokemon.sprite}" data-shiny="${pokemon.shinySprite}">
                    <button class="shiny-toggle" id="shiny-toggle-btn" title="Toggle Shiny Form">
                        <i class="fas fa-star"></i>
                    </button>
                </div>
                <div class="pokemon-title">
                    <h1>${pokemon.name}</h1>
                    <p class="species">${pokemon.species}</p>
                    <div class="types">
                        ${pokemon.types.map(type => `<span class="type type-${type.toLowerCase()}">${type}</span>`).join('')}
                    </div>
                </div>
            </div>
            <div class="pokemon-description">
                <h3>Description</h3>
                <p>${pokemon.description}</p>
            </div>
            <div class="pokemon-stats">
                <h3>Base Stats</h3>
                <div class="stats-grid">
                    <div class="stat"><span class="stat-name">HP</span><span class="stat-value">${pokemon.hp}</span>${renderStatBar(pokemon.hp)}</div>
                    <div class="stat"><span class="stat-name">Attack</span><span class="stat-value">${pokemon.attack}</span>${renderStatBar(pokemon.attack)}</div>
                    <div class="stat"><span class="stat-name">Defense</span><span class="stat-value">${pokemon.defense}</span>${renderStatBar(pokemon.defense)}</div>
                    <div class="stat"><span class="stat-name">Sp. Attack</span><span class="stat-value">${pokemon.spAttack}</span>${renderStatBar(pokemon.spAttack)}</div>
                    <div class="stat"><span class="stat-name">Sp. Defense</span><span class="stat-value">${pokemon.spDefense}</span>${renderStatBar(pokemon.spDefense)}</div>
                    <div class="stat"><span class="stat-name">Speed</span><span class="stat-value">${pokemon.speed}</span>${renderStatBar(pokemon.speed)}</div>
                </div>
            </div>
            ${movesetHtml}
            <div class="pokemon-details">
                <div class="detail-item"><h4>Height</h4><p>${pokemon.height}</p></div>
                <div class="detail-item"><h4>Weight</h4><p>${pokemon.weight}</p></div>
                <div class="detail-item"><h4>Abilities</h4><p>${pokemon.abilities.join(', ')}</p></div>
                <div class="detail-item"><h4>Evolution</h4><p>${pokemon.evolution}</p>${pokemon.nextEvolution ? `<p class="next-evo">→ ${pokemon.nextEvolution}</p>` : ''}</div>
            </div>
        </div>
    `;
}

// ===== SHINY TOGGLE FUNCTION =====
function initShinyToggle() {
    const shinyBtn = document.getElementById('shiny-toggle-btn');
    const modalSprite = document.getElementById('modal-sprite');
    
    if (!shinyBtn || !modalSprite) return;
    
    let isShiny = false;
    
    shinyBtn.addEventListener('click', () => {
        const normalSrc = modalSprite.dataset.normal;
        const shinySrc = modalSprite.dataset.shiny;
        
        if (!isShiny) {
            modalSprite.src = shinySrc;
            shinyBtn.classList.add('active');
            isShiny = true;
        } else {
            modalSprite.src = normalSrc;
            shinyBtn.classList.remove('active');
            isShiny = false;
        }
    });
}

// ===== MODAL FUNCTIONALITY =====
const modal = document.getElementById('pokemon-modal');
const modalBody = document.getElementById('modal-body');

function openModal(pokemonId) {
    const pokemon = pokemonData[pokemonId];
    if (pokemon) {
        modalBody.innerHTML = renderPokemonModal(pokemon);
        modal.style.display = 'flex';
        document.body.style.overflow = 'hidden';
        
        // Inicializar o shiny toggle após o modal ser aberto
        setTimeout(initShinyToggle, 50);
    }
}

function closeModal() {
    modal.style.display = 'none';
    document.body.style.overflow = 'auto';
}

document.querySelector('.close-modal')?.addEventListener('click', closeModal);
modal?.addEventListener('click', (e) => { if (e.target === modal) closeModal(); });
document.addEventListener('keydown', (e) => { if (e.key === 'Escape' && modal?.style.display === 'flex') closeModal(); });

// ===== WISHDEX CARDS CLICÁVEIS =====
document.querySelectorAll('.pokemon-card').forEach(card => {
    card.addEventListener('click', () => {
        const pokemonId = parseInt(card.dataset.pokemonId);
        openModal(pokemonId);
    });
});

// ===== INIT =====
if (document.readyState === 'loading') {
    document.addEventListener('DOMContentLoaded', () => {
        initWishDexHover();
        initHeaderAnimation();
    });
} else {
    initWishDexHover();
    initHeaderAnimation();
}

console.log('🎮 Pokémon: Hoenn\'s Last Wish website loaded successfully!');

