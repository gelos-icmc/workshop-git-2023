import Reveal          from 'reveal.js';
import RevealMarkdown  from 'reveal.js/plugin/markdown/markdown.js';
import RevealHighlight from 'reveal.js/plugin/highlight/highlight.js';
import revealScss      from 'reveal.js/css/reveal.scss';

import gelosLogo from 'gelos-revealjs/svg/logo.svg';
import gelosScss from 'gelos-revealjs/scss/gelos.scss';

document.getElementById("gelos-logo").innerHTML = gelosLogo;

const lectures = {
    aula1: require("./aula1.md"),
    aula2: require("./aula2.md"),
    aula3: require("./aula3.md"),
};

for (let lecture in lectures) {
    const content = lectures[lecture];
    const placeholder = document.getElementById(lecture);
    placeholder.setAttribute("data-markdown", content);
}

Reveal.initialize({
    plugins: [RevealMarkdown, RevealHighlight],
    slideNumber: true,
});
