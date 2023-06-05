<section epub:type="foreword" id="Translators-Notes">

<div class="parallel">
<div lang="de"></div>
<div lang="en">
## Translator's Notes

There is probably no translation of a substantial length that cannot
be improved, and in this sense, no such translation is ever finished.
This translation is no different, except perhaps in embracing that
fact: it is a 'living' translation, revised whenever I learn something
relevant to it. I work on it as I am able to and when my attention
returns to Hankel, and when I find new passages which are interesting
or difficult enough to be worth translating. Although it will probably
never become a complete translation of the whole book, this can
actually be an advantage: the passages which *have* been translated to
English act as a selection of, and guide to, the interesting parts of
the text.

This selection need not be limited to *my* interests. I encourage
contributions of any sort to the translation. Modern software makes
this easy: you can create your own copy of the translation, correct
what's already there, add transcriptions of the German or new
translations in English, and then send your changes back to me to be
incorporated here.[^contributing] If there are passages you'd like to
be translated but aren't able to translate yourself,
[contact me](https://recursewithless.net) and I will translate them
as I am able.

[^contributing]: To learn more about how to contribute, see
  [the project page on GitHub](https://github.com/wyleyr/hankel1867tr) and
  [this guide to contributing on GitHub](https://docs.github.com/en/get-started/quickstart/contributing-to-projects).
  
### The markup

The translation is designed to be read as hypertext, either in a Web
browser or an e-reader, and takes advantage of the possibilities of
HTML. This means there are internal links where the text references
itself, as well as external links where the text references another
work, if that work has been made available online. But I also use HTML
in subtler ways. For example, instead of annotating significant
translation choices by writing the German phrase directly into the
English text---typical practice for a printed scholarly
translation---I encode it in an HTML `title` attribute. This avoids
breaking the flow of the English, while keeping the information easily
accessible via mouseover for the curious reader, as well as annotating
the exact scope of the phrase for curious machines. Some aspects of
the markup are in fact entirely aimed at machines parsing and
indexing the translation, and won't be directly visible to a reader.
(To see them, view the page's HTML source.) Such subtleties will, I
hope, benefit the text and its users in the long run.

### Hankel's German

Besides the usual difficulties presented by older language in general,
and nineteenth century German in particular, Hankel's German has some
idiosyncracies that present special challenges to the translator. For
one, Hankel is fond of using German terms along with their Latinized
counterparts: he speaks of both <i>Beziehungen</i> and
<i>Relationen</i> (relations), <i>Verknüpfungen</i> and
<i>Operationen</i> (operations), and <i>wirkliche</i> and
<i>actuelle</i> (actual) numbers; and it is not always clear if he is
using these terms as synonyms or marking a distinction through
etymology. Translating them with the same word, in any case, can
sometimes result in awkward or repetitive English.

This problem arises already in the very first sentence of Chapter I,
where Hankel writes that pure theory has the task of deriving <i>neue
Beziehungen</i> from <i>gegebenen Relationen</i>. Does Hankel mean to
distinguish the kind of thing we derive from the kind of thing it's
derived from? In this case probably not, but in other cases he might:

> How we define the rules of purely formal [operations]{.origphrase title="Verknüpfungen"},
> i.e., of carrying out [operations]{.origphrase title="Operationen"} 
> with mental objects, is our arbitrary choice... [(§3)](#§3)

There's no translation for <i>Verknüpfungen</i> here which is obviously
better than "operations" ("conjunctions" or "conjoinings"?
"combinations" or "combinings"?), since Hankel is primarily referring
to arithmetical operations, but he clearly expects his use of
<i>Operationen</i> to be informative to his German readers in a way that a
second occurrence of "operations" cannot be in English. In such cases,
I rely on the annotations of the original German to make Hankel's
intent clear.

<i lang="de">actuell</i>
: Actual. Hankel opposes this word to <i>formal</i>. In earlier work,
  I reluctantly translated <i>actuel</i> as "presented", to mark its
  connection to intuition, and to distinguish it from <i>wirklich</i>
  and <i>eigentlich</i>. Here I have chosen to translate all three as
  "actual", since this is just another instance of the German-Latin
  cognate problem. But since <i>actuel</i> plays such an important
  philosophical role, I capitalize it to distinguish it from the others.

<i lang="de">bezeichnen</i>
: to signify. This is a problematic term in the context of a book that
  identifies numbers with <i>Zeichen</i> (signs). Hankel uses this
  term (on [page 14](#p.14)) as a translation of French
  <i lang="fr">signifier</i>, which speaks in favor of <q>signify</q> as
  a default translation, but in other places that would be extremely
  awkward. This is because Hankel uses <i>bezeichnen</i> both as a
  quasi-technical term for the relationship between a sign and what it
  signifies, but often also in a more informal sense, akin to <q>to
  call</q> or <q>to describe as</q>. 

  I have seen <q>designate</q> used as an alternative translation,
  especially in Frege, and I have sometimes used it to translate
  Hankel's more informal usage. While both mirror the etymological
  connection between <i>bezeichnen</i> and <i>Zeichen</i> in English,
  <q>designate</q> sounds much too "referential" for Hankel's more
  technical usage. Hankel does insist, in that passage on p. 14, that
  a <i>Zeichen</i> must <i>bezeichnen</i> something. As I understand
  him, Hankel would thus insist that every sign signifies something;
  but I think he would be unhappy with the (Fregean-sounding) claim
  that every sign must *designate* something.
 
<i lang="de">verknüpfen, Verknüpfung</i>
: conjoin, conjunction, operation.

### Corrections

I have corrected printing errors in the German where the intended text
was clear, and marked the corrected phrase in the HTML.


### Acknowledgments

This work was funded in part by the Austrian Science Fund grant ESP
211-G, as part of the project
["Frege among the Formalists"](https://pf.fwf.ac.at/en/research-in-practice/project-finder/58366).
I am grateful for their support.

</div>
</div>
</section>
