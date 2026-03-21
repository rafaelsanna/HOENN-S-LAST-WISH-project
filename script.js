/* ===== SHINY TOGGLE BUTTON ===== */
.pokemon-sprite-large {
    position: relative;
    display: inline-block;
}

.shiny-toggle {
    position: absolute;
    bottom: -10px;
    right: -10px;
    background: #2d2d2d;
    border: 2px solid var(--pokemon-yellow);
    border-radius: 50%;
    width: 36px;
    height: 36px;
    display: flex;
    align-items: center;
    justify-content: center;
    cursor: pointer;
    transition: all 0.3s ease;
    color: var(--pokemon-yellow);
    font-size: 1.2rem;
    background: rgba(0,0,0,0.6);
    backdrop-filter: blur(4px);
    z-index: 10;
}

.shiny-toggle:hover {
    transform: scale(1.1);
    background: var(--pokemon-yellow);
    color: #2d2d2d;
}

.shiny-toggle.active {
    background: var(--pokemon-yellow);
    color: #2d2d2d;
    border-color: #fff;
    box-shadow: 0 0 10px rgba(241, 196, 15, 0.5);
}

/* Light Mode */
body.light-mode .shiny-toggle {
    background: rgba(255,255,255,0.8);
    color: var(--pokemon-yellow);
}

body.light-mode .shiny-toggle:hover,
body.light-mode .shiny-toggle.active {
    background: var(--pokemon-yellow);
    color: white;
}
