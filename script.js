// Theme Toggle Functionality
const themeToggle = document.getElementById('themeToggle');
const body = document.body;

// Função para aplicar o tema
function applyTheme(theme) {
    if (theme === 'light') {
        body.classList.add('light-mode');
        themeToggle.innerHTML = '<i class="fas fa-moon"></i> Dark Mode';
        localStorage.setItem('theme', 'light');
    } else {
        body.classList.remove('light-mode');
        themeToggle.innerHTML = '<i class="fas fa-sun"></i> Light Mode'; 
        localStorage.setItem('theme', 'dark');
    }
}

// Verificar tema salvo ou usar dark mode como padrão
const savedTheme = localStorage.getItem('theme') || 'dark';
applyTheme(savedTheme);

// Toggle no clique do botão
themeToggle.addEventListener('click', () => {
    if (body.classList.contains('light-mode')) {
        applyTheme('dark');
    } else {
        applyTheme('light');
    }
});

// Smooth scrolling (seu código existente)
document.querySelectorAll('a[href^="#"]').forEach(anchor => {
    anchor.addEventListener('click', function (e) {
        e.preventDefault();
        document.querySelector(this.getAttribute('href')).scrollIntoView({
            behavior: 'smooth'
        });
    });
});

// Slideshow (seu código existente)
const slideshowImages = [
    'pokeemerald-0.png',
    'pokeemerald-1.png', 
    'pokeemerald-2.png',
    'pokeemerald-3.png',
    'pokeemerald-4.png',
    'pokeemerald-5.png',
    'pokeemerald-6.png',
    'pokeemerald-7.png',
    'pokeemerald-8.png',
    'pokeemerald-9.png',
    'pokeemerald-10.png',
    'pokeemerald-11.png',
    'pokeemerald-12.png',
    'pokeemerald-13.png',
    'pokeemerald-14.png',
    'pokeemerald-15.png',
    'pokeemerald-16.png',
    'pokeemerald-17.png',
    'pokeemerald-18.png'
];

let currentSlide = 0;
const slideshowElement = document.getElementById('slideshow-image');

function nextSlide() {
    currentSlide = (currentSlide + 1) % slideshowImages.length;
    slideshowElement.src = `images/screenshots/${slideshowImages[currentSlide]}`;
}

setInterval(nextSlide, 3000);

// Mobile Menu (seu código existente)
const hamburger = document.getElementById('hamburger');
const navLinks = document.getElementById('nav-links');

if (hamburger && navLinks) {
    hamburger.addEventListener('click', () => {
        navLinks.classList.toggle('active');
    });

    document.querySelectorAll('.nav-links a').forEach(link => {
        link.addEventListener('click', () => {
            navLinks.classList.remove('active');
        });
    });
}

console.log('Pokémon: Hoenn\'s Last Wish website loaded successfully!');

// wishdex.js - Funcionalidades da Wish Dex (versão simplificada)

// Placeholder image for missing sprites
const placeholderSprite = 'graphics/pokemon/placeholder.png';

// Função para cortar imagens animadas (64x128 -> 64x64)
function cropAnimSprite(imgElement) {
    const canvas = document.createElement('canvas');
    const ctx = canvas.getContext('2d');
    canvas.width = 64;
    canvas.height = 64;
    
    // Garantir que a imagem seja renderizada como pixel art
    ctx.imageSmoothingEnabled = false;
    
    // Criar uma nova imagem para carregar e cortar
    const img = new Image();
    img.crossOrigin = 'Anonymous';
    img.src = imgElement.src;
    
    img.onload = function() {
        // Desenha apenas a metade superior da imagem (primeiro frame)
        ctx.drawImage(img, 0, 0, 64, 64, 0, 0, 64, 64);
        imgElement.src = canvas.toDataURL();
        imgElement.style.imageRendering = 'pixelated';
        imgElement.style.width = '64px';
        imgElement.style.height = '64px';
    };
    
    img.onerror = function() {
        imgElement.src = placeholderSprite;
        console.warn(`Failed to load: ${imgElement.src}`);
    };
}

// Configurar todos os sprites que precisam ser cortados
function setupSprites() {
    const sprites = document.querySelectorAll('.pokemon-sprite[data-anim="true"]');
    
    sprites.forEach(sprite => {
        // Verificar se a imagem já está carregada
        if (sprite.complete) {
            cropAnimSprite(sprite);
        } else {
            sprite.onload = function() {
                cropAnimSprite(sprite);
            };
        }
        
        sprite.onerror = function() {
            this.src = placeholderSprite;
            console.warn(`Error loading sprite: ${this.src}`);
        };
    });
}

// Inicializar quando a página carregar
document.addEventListener('DOMContentLoaded', function() {
    console.log('Wish Dex loaded successfully!');
    setupSprites();
});

// Adicionar classe active ao link do menu
document.addEventListener('DOMContentLoaded', function() {
    const currentLocation = window.location.pathname;
    const navLinks = document.querySelectorAll('.nav-links a');
    
    navLinks.forEach(link => {
        if (link.getAttribute('href') === 'wishdex.html') {
            link.classList.add('active');
        }
    });
});