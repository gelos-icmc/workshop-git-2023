import Reveal          from 'reveal.js';
import RevealMarkdown  from 'reveal.js/plugin/markdown/markdown.js';
import RevealHighlight from 'reveal.js/plugin/highlight/highlight.js';
import revealScss      from 'reveal.js/css/reveal.scss';

import gelosLogo from 'gelos-revealjs/svg/logo.svg';
import gelosScss from 'gelos-revealjs/scss/gelos.scss';


document.getElementById("gelos-logo").innerHTML = gelosLogo;

Reveal.initialize({
    plugins: [RevealMarkdown, RevealHighlight],
    slideNumber: true,
});
