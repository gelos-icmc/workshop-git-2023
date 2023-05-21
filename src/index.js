import Reveal from 'reveal.js'
import RevealMarkdown from 'reveal.js/plugin/markdown/markdown.js'
import 'reveal.js/css/reveal.scss'
import 'gelos-revealjs/scss/gelos.scss'
import gelosLogo from 'gelos-revealjs/svg/logo.svg';

document.getElementById("gelos-logo").innerHTML = gelosLogo;

Reveal.initialize({
    plugins: [RevealMarkdown],
    slideNumber: true,
});
