# Markup conventions

## Translation

A piece of text and its corresponding translation are marked up by
placing both in a block-level element with class `parallel`
and adding a language attribute to the element containing each text.
The German text appears before the English translation. For example,
paragraphs are marked up like this:
```
<div class="parallel">
<p lang="de">Das ist ein deutscher Absatz.</p>
<p lang="en">This is an English paragraph.</p>
</div>
```
and headings like this:
```
<h2 class="parallel">
  <span lang="de">Deutscher Titel</span>
  <span lang="en">English Title</span>
</h2> 
```
The default CSS displays the texts in a `parallel` block side by side.

## Document structure

Each chapter (*Abschnitt*) is marked up as a `<section>` with 
`epub:type="chapter"`. Each numbered subsection is marked up as a `<section>` with
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

Hankel often defines (or at least explains) terms implicitly, by
showing how he uses them; these are marked up with `<dfn>`.
 
## Typography

In general, I am trying to use CSS to re-create the typography of the
original.

`<q>` elements are used to mark up double quotes, which (in
combination with the `lang` attribute of the surrounding paragraph)
ensures they are displayed in the right style for the language. If the
quote is drawn from another text which is also available on the Web, I
try to record that in the `cite` attribute.

Titles of texts which Hankel explicitly mentions are marked up with
`<cite>` and, if they are available on the Web, wrapped in a link to
the other text. These are typographically unadorned in most cases.

The class `.sc` is used for text in small caps, e.g. proper names.

The class `.text-small` is used for text set in small type.

The class `.text-center` is used for centered text. 

The class `.text-sperren` is used for passages where something is emphasized
via [letter spacing](https://en.wikipedia.org/wiki/Emphasis_(typography)#Letter-spacing),
but markup as `dfn` or `em` does not seem appropriate. 

## Mathematics

Mathematics is marked up using LaTeX, which pandoc exports to MathML
with the original LaTeX in an `annotation` element for accessibility.

