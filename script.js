// Pokémon: Hoenn's Last Wish — site interactions
// V3: split navigation + stable screenshot slideshow

document.addEventListener('DOMContentLoaded', function () {
    /* =====================================================
       MOBILE NAVIGATION
       ===================================================== */
    const hamburger = document.getElementById('hamburger');
    const navMenu = document.getElementById('nav-links');

    function closeNavigation() {
        if (!navMenu || !hamburger) return;

        navMenu.classList.remove('active');
        hamburger.setAttribute('aria-expanded', 'false');

        const icon = hamburger.querySelector('i');
        if (icon) {
            icon.classList.remove('fa-times');
            icon.classList.add('fa-bars');
        }
    }

    if (hamburger && navMenu) {
        hamburger.addEventListener('click', function () {
            const isOpen = navMenu.classList.toggle('active');
            hamburger.setAttribute('aria-expanded', String(isOpen));

            const icon = hamburger.querySelector('i');
            if (icon) {
                icon.classList.toggle('fa-bars', !isOpen);
                icon.classList.toggle('fa-times', isOpen);
            }
        });

        navMenu.querySelectorAll('a').forEach(function (link) {
            link.addEventListener('click', function () {
                if (window.innerWidth <= 900) {
                    closeNavigation();
                }
            });
        });

        window.addEventListener('resize', function () {
            if (window.innerWidth > 900) {
                closeNavigation();
            }
        });
    }

    /* =====================================================
       SMOOTH SCROLL FOR LOCAL ANCHORS
       ===================================================== */
    document.querySelectorAll('a[href^="#"]').forEach(function (anchor) {
        anchor.addEventListener('click', function (event) {
            const targetId = anchor.getAttribute('href');

            if (!targetId || targetId === '#') return;

            const target = document.querySelector(targetId);
            if (!target) return;

            event.preventDefault();
            target.scrollIntoView({
                behavior: 'smooth',
                block: 'start'
            });
        });
    });

    /* =====================================================
       JIRACHI + CELEBI HEADER HOVER IMAGE
       ===================================================== */
    const animatedHeaderImage = document.querySelector('.animated-header-img');

    if (animatedHeaderImage) {
        const normalImage = animatedHeaderImage.dataset.normal;
        const hoverImage = animatedHeaderImage.dataset.hover;

        if (normalImage && hoverImage) {
            animatedHeaderImage.addEventListener('mouseenter', function () {
                animatedHeaderImage.src = hoverImage;
            });

            animatedHeaderImage.addEventListener('mouseleave', function () {
                animatedHeaderImage.src = normalImage;
            });
        }
    }

    /* =====================================================
       LIGHT / DARK MODE
       ===================================================== */
    const themeToggle = document.getElementById('themeToggle');
    const savedTheme = localStorage.getItem('hlw-theme');

    function updateThemeButton() {
        if (!themeToggle) return;

        const lightMode = document.body.classList.contains('light-mode');
        themeToggle.innerHTML = lightMode
            ? '<i class="fas fa-moon"></i> Dark Mode'
            : '<i class="fas fa-sun"></i> Light Mode';
    }

    if (savedTheme === 'light') {
        document.body.classList.add('light-mode');
    }

    updateThemeButton();

    if (themeToggle) {
        themeToggle.addEventListener('click', function () {
            const lightMode = document.body.classList.toggle('light-mode');
            localStorage.setItem('hlw-theme', lightMode ? 'light' : 'dark');
            updateThemeButton();
        });
    }

    /* =====================================================
       SCREENSHOT SLIDESHOW
       =====================================================

       IMPORTANT:
       GitHub Pages is case-sensitive.
       These names match the current files:
         Pokemon_HLW-0.png ... Pokemon_HLW-18.png

       Only ONE autoplay timeout exists at a time.
       Manual navigation cancels/resets it, so rapid clicks
       cannot create a stack of timers that later fires quickly.
       ===================================================== */
    const slideshowImage = document.getElementById('slideshow-image');
    const previousButton = document.getElementById('prev-slide');
    const nextButton = document.getElementById('next-slide');
    const slideshowContainer = document.querySelector('.slideshow-container');

    if (slideshowImage && previousButton && nextButton) {
        const TOTAL_SCREENSHOTS = 19;
        const AUTOPLAY_DELAY = 6500;
        const CLICK_GUARD_MS = 160;

        // One cache token per page load:
        // forces a fresh screenshot set after a new deploy,
        // but still lets the browser cache images during this visit.
        const cacheToken = Date.now().toString(36);

        const screenshots = Array.from(
            { length: TOTAL_SCREENSHOTS },
            function (_, index) {
                return 'images/screenshots/Pokemon_HLW-' + index + '.png';
            }
        );

        let currentSlide = 0;
        let autoplayTimer = null;
        let lastManualNavigation = 0;
        let transitionId = 0;
        let slideshowHovered = false;

        function urlFor(path) {
            return path + '?v=' + cacheToken;
        }

        function normalizeIndex(index) {
            return (index + screenshots.length) % screenshots.length;
        }

        function preload(index) {
            const preloadImage = new Image();
            preloadImage.src = urlFor(screenshots[normalizeIndex(index)]);
        }

        function renderSlide(index) {
            currentSlide = normalizeIndex(index);
            const thisTransition = ++transitionId;
            const nextSrc = urlFor(screenshots[currentSlide]);

            slideshowImage.classList.add('is-switching');

            // Preload before swapping to avoid a blank flash.
            const loader = new Image();

            loader.onload = function () {
                if (thisTransition !== transitionId) return;

                slideshowImage.src = nextSrc;
                slideshowImage.alt =
                    'In-Game Screenshot ' +
                    (currentSlide + 1) +
                    ' of ' +
                    screenshots.length;

                requestAnimationFrame(function () {
                    slideshowImage.classList.remove('is-switching');
                });

                preload(currentSlide + 1);
                preload(currentSlide - 1);
            };

            loader.onerror = function () {
                if (thisTransition !== transitionId) return;

                slideshowImage.classList.remove('is-switching');
                console.error(
                    'Screenshot not found:',
                    screenshots[currentSlide],
                    'Check filename capitalization on GitHub Pages.'
                );
            };

            loader.src = nextSrc;
        }

        function stopAutoplay() {
            if (autoplayTimer !== null) {
                clearTimeout(autoplayTimer);
                autoplayTimer = null;
            }
        }

        function scheduleAutoplay() {
            stopAutoplay();

            if (document.hidden || slideshowHovered) return;

            autoplayTimer = window.setTimeout(function () {
                renderSlide(currentSlide + 1);
                scheduleAutoplay();
            }, AUTOPLAY_DELAY);
        }

        function manualMove(direction) {
            const now = Date.now();

            // Prevent click-spam from creating visual/event queues.
            if (now - lastManualNavigation < CLICK_GUARD_MS) {
                return;
            }

            lastManualNavigation = now;
            stopAutoplay();
            renderSlide(currentSlide + direction);
            scheduleAutoplay();
        }

        previousButton.addEventListener('click', function () {
            manualMove(-1);
        });

        nextButton.addEventListener('click', function () {
            manualMove(1);
        });

        if (slideshowContainer) {
            slideshowContainer.addEventListener('mouseenter', function () {
                slideshowHovered = true;
                stopAutoplay();
            });

            slideshowContainer.addEventListener('mouseleave', function () {
                slideshowHovered = false;
                scheduleAutoplay();
            });
        }

        document.addEventListener('visibilitychange', function () {
            if (document.hidden) {
                stopAutoplay();
            } else {
                scheduleAutoplay();
            }
        });

        // Start from screenshot 0 and ensure the current deployment is used.
        renderSlide(0);
        scheduleAutoplay();
    }
});
