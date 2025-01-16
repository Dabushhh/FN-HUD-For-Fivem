window.addEventListener('message', (event) => {
    const data = event.data;

    if (data.type === 'updateHUD') {
        const healthBar = document.getElementById('health-bar');
        const armorBar = document.getElementById('armor-bar');

        healthBar.style.width = `${data.health}%`;
        armorBar.style.width = `${data.armor}%`;

        document.querySelector('.health .label').innerText = data.health;
        document.querySelector('.armor .label').innerText = data.armor;
    }
});
