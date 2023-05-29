# A Translation of Hankel's *Vorlesungen*

This is a work-in-progress English translation of Hermann Hankel's 1867
*Vorlesungen über die complexen Zahlen und ihre Functionen*
("Lectures on complex numbers and their functions"), a textbook on complex 
analysis that played an important role in the transition to modern mathematics
in nineteenth century Germany.

You can view the translation in its present state
[here](https://wyleyr.github.io/hankel1867tr/).

The original text, with sometimes-workable OCR, is available from the
[Internet Archive](https://archive.org/details/vorlesungenberd01hankgoog/).

## Goals

Hankel's book is not very well known today, even among philosophers and
historians of mathematics, but it was an important work in its time.
For example, in Frege's *Grundlagen der Arithmetik*
("Foundations of arithmetic"), which *is* widely read among
anglophone philosophers today, Hankel is Frege's most frequently cited
interlocutor. Frege scholarship could learn a lot from Hankel, but
because Hankel's text is difficult and hasn't been translated, it
hasn't received much attention.

By making this translation available, I am hoping to make the work
more accessible to an English-speaking audience. I am also using the
project to experiment with the possibilities of publishing a
translation in a "hypertext-first" format.

At the moment, it is not my goal to translate the whole book, which is
mostly just a mathematics textbook that is by now quite outdated. Its
interest lies mainly in its historical importance and in the
philosophical approach to the foundations of mathematics which Hankel
sets out in the initial chapters of the book. The translation is
focused on these initial chapters.

## Markup conventions

### Translation

A paragraph or other block-level element and its corresponding translation
are marked up by placing both in a `<div>` with class `parallel` and adding a
language attribute to each block element. The German block
element appears before the English translation. For example,
```
<div class="parallel">
<p lang="de">Das ist ein deutscher Absatz.</p>
<p lang="en">This is an English paragraph.</p>
</div>
```
The default CSS displays these blocks side by side.

### Document structure

Each chapter (*Abschnitt*) is marked up as a `<section>` with class
`chapter`. Each numbered subsection is marked up as a `<section>` with
class `pz` (for *Paragrafzeichen*, the § symbol), inside the chapter
section of which it is a part. Hankel's unnumbered subsections are
marked up as `<section>` with class `unnumbered`. Every titled
`section` has an `id` attribute and is linked from the table of
contents.

The original page numbers are marked in both German and English using
`<a>` elements of class `origpage` and have `lang`, `id`, and `title`
attributes to make them useful for internal links and for citations to
the original text. The `id` and `title` are related to the original
page number in an obvious way:
```
  <a lang="de" class="origpage" id="S.1" title="Seite 1"></a>
  <a lang="en" class="origpage" id="p.1" title="Page 1"></a>
```
Where a page break occurs inside a paragraph, the German link is placed
immediately before the first word of the page indicated, and as
near as possible to the corresponding position in the English translation.
(This is why the page break must be marked with *two* anchors.)

Where a page break occurs outside any paragraph (e.g. at the start of
a chapter), the `<a>` are placed by themselves in a `<div class="parallel">`.

One challenge I haven't completely solved yet is how to markup
footnotes. For now I have decided to place them directly following the
paragraph where they are referenced. Footnotes are marked up using
`<p>` elements inside an `<aside>` element with class `footnote`.

### Typography

`<q>` elements are used to mark up double quotes, which (in
combination with the `lang` attribute of the surrounding paragraph)
ensures they are displayed in the right style for the language. If the
quote is drawn from another text which is also available on the Web, I
try to record that in the `cite` attribute.

Titles of texts which Hankel explicitly mentions are marked up with
`<cite>` and, if they are available on the Web, wrapped in a link to
the other text.

The class `.sc` is used for text in small caps, e.g. proper names.

The class `.text-small` is used for text set in small type.

The class `.text-center` is used for centered text. 

### Mathematics

Mathematics is marked up in MathML, with the LaTeX equivalent in an
`annotation` element for accessibility. I produce the markup by first
typing the LaTeX equivalent, then converting it to MathML with Pandoc
like
```
pandoc -f latex -t html --mathml
```

## Contributing

I update the translation as I find new passages of interest and as I
learn more about the text and its history. Comments, corrections, and
contributions of new translations are welcome. Open an issue, make a
pull request, or simply send me an email (<code>rwl</code> followed by
[the usual commercial accounting symbol](https://en.wikipedia.org/wiki/At_sign) and
<code>[recursewithless.net](https://recursewithless.net "the domain of my website")</code>).

## License

<p xmlns:cc="http://creativecommons.org/ns#">This work by <a rel="cc:attributionURL dct:creator" property="cc:attributionName" href="https://recursewithless.net">Richard Lawrence</a> is licensed under <a href="http://creativecommons.org/licenses/by-sa/4.0/?ref=chooser-v1" target="_blank" rel="license noopener noreferrer" style="display:inline-block;">CC BY-SA 4.0 <img style="height:22px!important;margin-left:3px;vertical-align:text-bottom;" src="https://mirrors.creativecommons.org/presskit/icons/cc.svg?ref=chooser-v1"><img style="height:22px!important;margin-left:3px;vertical-align:text-bottom;" src="https://mirrors.creativecommons.org/presskit/icons/by.svg?ref=chooser-v1"><img style="height:22px!important;margin-left:3px;vertical-align:text-bottom;" src="https://mirrors.creativecommons.org/presskit/icons/sa.svg?ref=chooser-v1"></a></p> 
