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

// ===== WISHDEX HOVER (TROCA DE SPRITE) =====
function initWishDexHover() {
    document.querySelectorAll('.pokemon-sprite').forEach(sprite => {
        const normalSrc = sprite.dataset.normal;
        const frameSrc = sprite.dataset.frame;
        if (normalSrc && frameSrc) {
            sprite.addEventListener('mouseenter', () => sprite.src = frameSrc);
            sprite.addEventListener('mouseleave', () => sprite.src = normalSrc);
        }
    });
}

// ===== POKÉMON DATA COM MOVESETS =====
const pokemonData = {
    // Bulbasaur Family (IDs 1-3)
    1: {
        id: 1, name: "Bulbasaur", species: "Toad Pokémon", sprite: "images/wishdex/01.png",
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
        id: 2, name: "Ivysaur", species: "Toad Pokémon", sprite: "images/wishdex/02.png",
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
        id: 3, name: "Venusaur", species: "Seed Pokémon", sprite: "images/wishdex/03.png",
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
    },
    
    // Totodile Family (IDs 4-6)
    4: {
        id: 4, name: "Totodile", species: "Big Jaw Pokémon", sprite: "images/wishdex/04.png",
        hp: 50, attack: 55, defense: 54, speed: 43, spAttack: 64, spDefense: 48,
        types: ["Fire"], height: "0.6 m", weight: "9.5 kg",
        abilities: ["Blaze", "Sheer Force (Hidden)"],
        description: "Despite its small body, Totodile's tail and mane burn intensely. While it may think it is just playfully embers, its flames have enough heat to cause serious burns.",
        evolution: "Evolves at level 16", nextEvolution: "Croconaw",
        moveset: [
            { level: 1, move: "Scratch" }, { level: 1, move: "Leer" },
            { level: 6, move: "Ember" }, { level: 7, move: "Twister" },
            { level: 10, move: "Scary Face" }, { level: 14, move: "Bite" },
            { level: 19, move: "Fire Fang" }, { level: 22, move: "Fire Spin" },
            { level: 25, move: "Crunch" }, { level: 29, move: "Dragon Tail" },
            { level: 30, move: "Lava Plume" }, { level: 33, move: "Dragon Breath" },
            { level: 39, move: "Flamethrower" }, { level: 41, move: "Dragon Pulse" },
            { level: 45, move: "Inferno" }, { level: 50, move: "Fire Blast" },
            { level: 50, move: "Scale Shot" }, { level: 64, move: "Eruption" },
            { level: 64, move: "Outrage" }
        ]
    },
    5: {
        id: 5, name: "Croconaw", species: "Big Jaw Pokémon", sprite: "images/wishdex/05.png",
        hp: 65, attack: 80, defense: 80, speed: 58, spAttack: 59, spDefense: 63,
        types: ["Fire"], height: "1.1 m", weight: "25.0 kg",
        abilities: ["Blaze", "Sheer Force (Hidden)"],
        description: "When its fiery tail and mane flare, it will absolutely not stop burning. Because the flames are fueled by its inner rage, they become inextinguishable and cause severe burns.",
        evolution: "Evolves at level 36", nextEvolution: "Feraligatr",
        moveset: [
            { level: 1, move: "Scratch" }, { level: 1, move: "Leer" },
            { level: 1, move: "Ember" }, { level: 6, move: "Ember" },
            { level: 7, move: "Twister" }, { level: 9, move: "Bite" },
            { level: 13, move: "Scary Face" }, { level: 19, move: "Fire Fang" },
            { level: 25, move: "Fire Spin" }, { level: 27, move: "Crunch" },
            { level: 30, move: "Dragon Tail" }, { level: 31, move: "Lava Plume" },
            { level: 35, move: "Dragon Breath" }, { level: 43, move: "Flamethrower" },
            { level: 45, move: "Dragon Pulse" }, { level: 50, move: "Inferno" },
            { level: 55, move: "Fire Blast" }, { level: 57, move: "Scale Shot" },
            { level: 66, move: "Eruption" }, { level: 70, move: "Outrage" }
        ]
    },
    6: {
        id: 6, name: "Feraligatr", species: "Big Jaw Pokémon", sprite: "images/wishdex/06.png",
        hp: 70, attack: 100, defense: 70, speed: 80, spAttack: 130, spDefense: 80,
        types: ["Fire", "Dragon"], height: "2.3 m", weight: "88.8 kg",
        abilities: ["Blaze", "Sheer Force (Hidden)"],
        description: "It opens its huge mouth to unleash a dragon's fire that can melt boulders. In battle, the more enraged it becomes, the larger and hotter its flames grow, scorching everything in its path.",
        evolution: "Fully evolved", nextEvolution: null,
        moveset: [
            { level: 1, move: "Scratch" }, { level: 1, move: "Leer" },
            { level: 1, move: "Ember" }, { level: 1, move: "Dragon Rage" },
            { level: 7, move: "Twister" }, { level: 9, move: "Bite" },
            { level: 13, move: "Scary Face" }, { level: 19, move: "Fire Fang" },
            { level: 25, move: "Fire Spin" }, { level: 27, move: "Crunch" },
            { level: 30, move: "Dragon Tail" }, { level: 33, move: "Lava Plume" },
            { level: 37, move: "Dragon Breath" }, { level: 45, move: "Flamethrower" },
            { level: 48, move: "Dragon Pulse" }, { level: 55, move: "Inferno" },
            { level: 60, move: "Fire Blast" }, { level: 62, move: "Scale Shot" },
            { level: 70, move: "Eruption" }, { level: 80, move: "Outrage" }
        ]
    },
    
    // Torchic Family (IDs 7-9)
    7: {
        id: 7, name: "Torchic", species: "Chick Pokémon", sprite: "images/wishdex/07.png",
        hp: 45, attack: 60, defense: 40, speed: 45, spAttack: 70, spDefense: 50,
        types: ["Grass"], height: "0.4 m", weight: "2.5 kg",
        abilities: ["Overgrow", "Speed Boost (Hidden)"],
        description: "If threatened, it attacks using its wings, which are made of sharp plant leaves. It can slash foes with great precision, making it a dangerous opponent.",
        evolution: "Evolves at level 16", nextEvolution: "Combusken",
        moveset: [
            { level: 1, move: "Scratch" }, { level: 1, move: "Growl" },
            { level: 6, move: "Leafage" }, { level: 7, move: "Peck" },
            { level: 9, move: "Sand Attack" }, { level: 12, move: "Detect" },
            { level: 13, move: "Razor Leaf" }, { level: 16, move: "Trailblaze" },
            { level: 21, move: "Slash" }, { level: 24, move: "Bounce" },
            { level: 25, move: "Trop Kick" }, { level: 27, move: "Focus Energy" },
            { level: 30, move: "Energy Ball" }, { level: 33, move: "Feather Dance" },
            { level: 36, move: "Reversal" }, { level: 39, move: "Leaf Blade" },
            { level: 46, move: "Brave Bird" }
        ]
    },
    8: {
        id: 8, name: "Combusken", species: "Young Fowl Pokémon", sprite: "images/wishdex/08.png",
        hp: 60, attack: 85, defense: 60, speed: 55, spAttack: 85, spDefense: 60,
        types: ["Grass"], height: "0.9 m", weight: "19.5 kg",
        abilities: ["Overgrow", "Speed Boost (Hidden)"],
        description: "It uses its small leaf-covered wings to leap high into the air, slashing at foes below. By spreading its wings, it can glide long distances, but it cannot truly fly.",
        evolution: "Evolves at level 36", nextEvolution: "Blaziken",
        moveset: [
            { level: 0, move: "Double Kick" }, { level: 1, move: "Feather Dance" },
            { level: 1, move: "Scratch" }, { level: 1, move: "Growl" },
            { level: 1, move: "Quick Attack" }, { level: 1, move: "Trailblaze" },
            { level: 9, move: "Razor Leaf" }, { level: 12, move: "Detect" },
            { level: 15, move: "Sand Attack" }, { level: 18, move: "Leaf Tornado" },
            { level: 20, move: "Aerial Ace" }, { level: 25, move: "Slash" },
            { level: 26, move: "Trop Kick" }, { level: 26, move: "Acrobatics" },
            { level: 30, move: "Bounce" }, { level: 32, move: "Dual Wingbeat" },
            { level: 35, move: "Focus Energy" }, { level: 37, move: "Energy Ball" },
            { level: 40, move: "Leaf Blade" }, { level: 45, move: "Tailwind" },
            { level: 50, move: "Hurricane" }, { level: 55, move: "Leaf Storm" },
            { level: 60, move: "Brave Bird" }
        ]
    },
    9: {
        id: 9, name: "Blaziken", species: "Blaze Pokémon", sprite: "images/wishdex/09.png",
        hp: 80, attack: 120, defense: 70, speed: 80, spAttack: 110, spDefense: 70,
        types: ["Grass", "Flying"], height: "1.9 m", weight: "52.0 kg",
        abilities: ["Overgrow", "Speed Boost (Hidden)"],
        description: "It learns martial arts that use punches and kicks. Every several years, its old feathers burn off, and new, supple feathers grow back in their place.",
        evolution: "Fully evolved", nextEvolution: null,
        moveset: [
            { level: 0, move: "Leaf Blade" }, { level: 1, move: "Feather Dance" },
            { level: 1, move: "Scratch" }, { level: 1, move: "Growl" },
            { level: 1, move: "Quick Attack" }, { level: 1, move: "Trailblaze" },
            { level: 9, move: "Razor Leaf" }, { level: 12, move: "Detect" },
            { level: 15, move: "Sand Attack" }, { level: 18, move: "Leaf Tornado" },
            { level: 20, move: "Aerial Ace" }, { level: 25, move: "Slash" },
            { level: 26, move: "Trop Kick" }, { level: 26, move: "Acrobatics" },
            { level: 30, move: "Bounce" }, { level: 32, move: "Dual Wingbeat" },
            { level: 35, move: "Focus Energy" }, { level: 37, move: "Energy Ball" },
            { level: 40, move: "Air Slash" }, { level: 45, move: "Tailwind" },
            { level: 50, move: "Hurricane" }, { level: 55, move: "Leaf Storm" },
            { level: 60, move: "Brave Bird" }
        ]
    }
};

// ===== RENDER MODAL (COM MOVESET) =====
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
                    <img src="${pokemon.sprite}" alt="${pokemon.name}">
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

// ===== MODAL FUNCTIONALITY =====
const modal = document.getElementById('pokemon-modal');
const modalBody = document.getElementById('modal-body');

function openModal(pokemonId) {
    const pokemon = pokemonData[pokemonId];
    if (pokemon) {
        modalBody.innerHTML = renderPokemonModal(pokemon);
        modal.style.display = 'flex';
        document.body.style.overflow = 'hidden';
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

