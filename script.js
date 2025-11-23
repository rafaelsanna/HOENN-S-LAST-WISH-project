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

