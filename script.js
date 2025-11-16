// Smooth scroll
document.querySelectorAll("nav a").forEach(link => {
    link.addEventListener("click", (e) => {
        e.preventDefault();
        document.querySelector(link.getAttribute("href"))
                .scrollIntoView({ behavior: "smooth" });
    });
});

// Destacar seção ativa
const sections = document.querySelectorAll("section");
const navLinks = document.querySelectorAll("nav a");

window.addEventListener("scroll", () => {
    let atual = "";
    sections.forEach(sec => {
        const top = sec.offsetTop;
        if (pageYOffset >= top - 100) {
            atual = sec.getAttribute("id");
        }
    });

    navLinks.forEach(link => {
        link.classList.remove("active");
        if (link.getAttribute("href") === `#${atual}`) {
            link.classList.add("active");
        }
    });
});
// Enviar mensagem para WhatsApp com nome e texto
document.getElementById("form-whatsapp").addEventListener("submit", function(e) {
    e.preventDefault();

    const nome = document.getElementById("nome").value;
    const mensagem = document.getElementById("mensagem").value;
    
    const numero = "5517999999999"; // Altere para o número real
    const texto = `Olá, meu nome é ${nome}. ${mensagem}`;
    const url = `https://wa.me/${numero}?text=${encodeURIComponent(texto)}`;

    window.open(url, "_blank");
});