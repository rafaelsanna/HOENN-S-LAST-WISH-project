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

// SIMPLE SLIDESHOW THAT WORKS!
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

// Start slideshow - change image every 3 seconds
setInterval(nextSlide, 3000);

console.log('Hoenn\'s Last Wish website loaded successfully! Slideshow active!');
EOF
