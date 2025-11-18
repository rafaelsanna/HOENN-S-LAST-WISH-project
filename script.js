// Smooth scrolling for navigation links
document.querySelectorAll('a[href^="#"]').forEach(anchor => {
    anchor.addEventListener('click', function (e) {
        e.preventDefault();
        document.querySelector(this.getAttribute('href')).scrollIntoView({
            behavior: 'smooth'
        });
    });
});

// Add scroll effect to header
window.addEventListener('scroll', function() {
    const header = document.querySelector('header');
    if (window.scrollY > 100) {
        header.style.background = 'rgba(255, 255, 255, 0.98)';
    } else {
        header.style.background = 'rgba(255, 255, 255, 0.95)';
    }
});


// Slideshow functionality
class Slideshow {
    constructor() {
        this.slides = document.querySelectorAll('.slide');
        this.dotsContainer = document.querySelector('.dots-container');
        this.currentSlide = 0;
        this.autoPlayInterval = null;
        
        this.init();
    }
    
    init() {
        this.createDots();
        this.startAutoPlay();
        this.addEventListeners();
    }
    
    createDots() {
        this.slides.forEach((_, index) => {
            const dot = document.createElement('div');
            dot.classList.add('dot');
            if (index === 0) dot.classList.add('active');
            dot.addEventListener('click', () => this.goToSlide(index));
            this.dotsContainer.appendChild(dot);
        });
    }
    
    addEventListeners() {
        document.querySelector('.prev-btn').addEventListener('click', () => this.prevSlide());
        document.querySelector('.next-btn').addEventListener('click', () => this.nextSlide());
        
        // Pause on hover
        document.querySelector('.slideshow').addEventListener('mouseenter', () => {
            clearInterval(this.autoPlayInterval);
        });
        
        document.querySelector('.slideshow').addEventListener('mouseleave', () => {
            this.startAutoPlay();
        });
    }
    
    goToSlide(index) {
        this.slides[this.currentSlide].classList.remove('active');
        this.dotsContainer.children[this.currentSlide].classList.remove('active');
        
        this.currentSlide = index;
        
        this.slides[this.currentSlide].classList.add('active');
        this.dotsContainer.children[this.currentSlide].classList.add('active');
    }
    
    nextSlide() {
        const next = (this.currentSlide + 1) % this.slides.length;
        this.goToSlide(next);
    }
    
    prevSlide() {
        const prev = (this.currentSlide - 1 + this.slides.length) % this.slides.length;
        this.goToSlide(prev);
    }
    
    startAutoPlay() {
        this.autoPlayInterval = setInterval(() => {
            this.nextSlide();
        }, 3000); // Muda a cada 3 segundos
    }
}

// Initialize slideshow when page loads
document.addEventListener('DOMContentLoaded', () => {
    new Slideshow();
});

