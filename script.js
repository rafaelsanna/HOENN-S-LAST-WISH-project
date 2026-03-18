// Theme Toggle Functionality
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

// Smooth scrolling
document.querySelectorAll('a[href^="#"]').forEach(anchor => {
    anchor.addEventListener('click', function (e) {
        e.preventDefault();
        const target = document.querySelector(this.getAttribute('href'));
        if (target) {
            target.scrollIntoView({ behavior: 'smooth' });
        }
    });
});

// Slideshow
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
        setTimeout(() => {
            autoPlayInterval = setInterval(nextSlide, 3000);
        }, 5000);
    });

    document.getElementById('prev-slide')?.addEventListener('click', () => {
        clearInterval(autoPlayInterval);
        prevSlide();
        setTimeout(() => {
            autoPlayInterval = setInterval(nextSlide, 3000);
        }, 5000);
    });
}

// Mobile Menu
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

// Contador de visitas
fetch('https://api.counterapi.dev/v1/hoennslastwish/site/up')
    .then(response => response.json())
    .then(data => console.log('📊 Total de visitas:', data.count))
    .catch(error => console.log('Erro no contador:', error));

// WishDex Hover Effect
function initWishDexHover() {
    const sprites = document.querySelectorAll('.pokemon-sprite');
    if (sprites.length === 0) return;
    
    sprites.forEach(sprite => {
        const normalSrc = sprite.dataset.normal;
        const frameSrc = sprite.dataset.frame;
        
        if (normalSrc && frameSrc) {
            sprite.addEventListener('mouseenter', () => sprite.src = frameSrc);
            sprite.addEventListener('mouseleave', () => sprite.src = normalSrc);
        }
    });
}

// Header Animation
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

// Inicialização
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

