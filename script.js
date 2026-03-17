// Theme Toggle Functionality - CORRIGIDO (com verificação)
const themeToggle = document.getElementById('themeToggle');
const body = document.body;

// Função para aplicar o tema (agora segura)
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

// Verificar tema salvo ou usar dark mode como padrão
const savedTheme = localStorage.getItem('theme') || 'dark';
applyTheme(savedTheme);

// Toggle no clique do botão (só se existir)
if (themeToggle) {
    themeToggle.addEventListener('click', () => {
        if (body.classList.contains('light-mode')) {
            applyTheme('dark');
        } else {
            applyTheme('light');
        }
    });
}

// Smooth scrolling (só funciona na página principal)
document.querySelectorAll('a[href^="#"]').forEach(anchor => {
    anchor.addEventListener('click', function (e) {
        e.preventDefault();
        const target = document.querySelector(this.getAttribute('href'));
        if (target) {
            target.scrollIntoView({
                behavior: 'smooth'
            });
        }
    });
});

// Slideshow (só funciona na página principal)
const slideshowElement = document.getElementById('slideshow-image');
if (slideshowElement) {
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

    function nextSlide() {
        currentSlide = (currentSlide + 1) % slideshowImages.length;
        slideshowElement.src = `images/screenshots/${slideshowImages[currentSlide]}`;
    }

    setInterval(nextSlide, 3000);
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

// Contador invisível de visitas (apenas uma vez)
fetch('https://api.counterapi.dev/v1/hoennslastwish/site/up')
  .then(response => response.json())
  .then(data => {
    console.log('📊 Total de visitas:', data.count);
  })
  .catch(error => console.log('Erro no contador:', error));

// WishDex Hover Effect - VERSÃO FINAL CORRIGIDA
function initWishDexHover() {
    const sprites = document.querySelectorAll('.pokemon-sprite');
    
    if (sprites.length === 0) {
        console.log('📝 Não há sprites na página');
        return;
    }
    
    console.log(`🎯 Encontrados ${sprites.length} sprites`);
    
    sprites.forEach((sprite, index) => {
        const normalSrc = sprite.dataset.normal;
        const frameSrc = sprite.dataset.frame;
        
        if (!normalSrc || !frameSrc) {
            console.warn(`⚠️ Sprite ${index + 1} sem data-normal ou data-frame`);
            return;
        }
        
        // Verificar se as imagens existem (opcional)
        const imgNormal = new Image();
        imgNormal.src = normalSrc;
        
        const imgFrame = new Image();
        imgFrame.src = frameSrc;
        
        sprite.addEventListener('mouseenter', () => {
            sprite.src = frameSrc;
        });
        
        sprite.addEventListener('mouseleave', () => {
            sprite.src = normalSrc;
        });
    });
    
    console.log('✨ WishDex hover initialized');
}

// Executar quando a página carregar
if (document.readyState === 'loading') {
    document.addEventListener('DOMContentLoaded', initWishDexHover);
} else {
    initWishDexHover();
}

// Mensagem de boas-vindas
console.log('🎮 Pokémon: Hoenn\'s Last Wish website loaded successfully!');

