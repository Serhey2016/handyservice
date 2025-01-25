document.querySelectorAll('.scroll-list a').forEach(link => {
    link.addEventListener('click', function(event) {
        event.preventDefault();
        // Here you would open the subdomain, for example:
        window.open(this.href, '_blank');
        console.log('Opening subdomain: ' + this.href);
    });
});