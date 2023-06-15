## Translator's Notes {#Translators-Notes epub:type="foreword" lang="en"}

There is probably no translation that cannot be improved, and in this
sense, no translation is ever finished. This translation embraces that
fact: it is a 'living' translation, revised whenever I learn something
new and relevant to it. I work on it when I find new passages in
Hankel which are interesting or difficult enough to be worth
translating. Although it will probably never become a complete
translation of the whole book, this can actually be an advantage: the
passages which have been translated to English act as a selection
of, and guide to, the interesting parts of the text.

This selection need not be limited to *my* interests. I encourage
contributions of any sort to the translation. Modern software makes
this easy: you can create your own copy of the translation, correct
what's already there, add transcriptions of the German or new
translations in English, and then send your changes back to me to be
incorporated here. If there are passages you'd like to
be translated but aren't able to translate yourself,
[contact me](https://recursewithless.net) and I will translate them
as I am able.

To learn more about how to contribute, see
[the project page on GitHub](https://github.com/wyleyr/hankel1867tr) and
[this guide to contributing on GitHub](https://docs.github.com/en/get-started/quickstart/contributing-to-projects).
  
### The markup

The translation is designed to be read as hypertext, either in a Web
browser or an e-reader, and takes advantage of the possibilities of
HTML. There are internal links where the text references itself, as
well as external links where the text references another work, if that
work has been made available on the Web. The page breaks of the
original document are marked up as anchors to make citation and
linking easy. Instead of annotating significant translation choices by
writing the German phrase directly into the English text---typical
practice for a printed scholarly translation---it is encoded in the
`title` attribute of a `<span>` element, which preserves the flow of
the English while keeping the information easily accessible for the
reader curious about the German. Other aspects of the markup are
entirely aimed at machines parsing and indexing the translation, and
won't be directly visible to a human reader. (To see them, view the page's
HTML source.) Such subtleties will, I hope, benefit the text and its
users in the long run.

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
better than "operations", since Hankel is primarily referring
to arithmetical operations, but he clearly expects his use of
<i>Operationen</i> to be informative to his German readers in a way that a
second occurrence of "operations" cannot be in English. In such cases,
I rely on the annotations of the original German to make Hankel's
intent clear.

A few terms (not the least of which is <i>Verknüpfung</i>) are
especially difficult to translate; here are the choices I've made
about them:

<i lang="de">actuell</i>
: Actual. Hankel opposes this word to <i>formal</i>. In earlier work,
  I reluctantly translated <i>actuell</i> as "presented", to mark its
  connection to intuition, and to distinguish it from <i>wirklich</i>
  and <i>eigentlich</i>. Here I have chosen to translate all three as
  "actual", since this is just another instance of the German-Latin
  cognate problem discussed above. But since <i>actuell</i> is
  Hankel's official counterpart to <i>formal</i>, I capitalize it to
  distinguish it from the others.

<i lang="de">bezeichnen</i>
: to signify. This is a problematic term in the context of a book that
  identifies numbers with <i lang="de">Zeichen</i> (signs). Hankel uses
  this term (on [page 14](#p.14)) as a translation of French
  <i lang="fr">signifier</i>, which speaks in favor of "signify" as a
  default translation, but in many places that would be too awkward.
  This is because Hankel uses <i>bezeichnen</i> both as a
  quasi-technical term for the relationship between a sign and what it
  signifies, but often also in a more informal sense, akin to "to
  call" or "to describe as". "Designate" is sometimes used to
  translate <i>bezeichnen</i>, especially in Frege, and I have
  sometimes used it to translate Hankel's more informal usage. But
  while both "designate" and "signify" mirror the etymological
  connection between <i>bezeichnen</i> and <i>Zeichen</i> in English,
  "designate" sounds much too "referential" for Hankel's more
  technical usage. Hankel does insist, in that passage on p. 14, that
  a <i>Zeichen</i> must <i>bezeichnen</i> something. As I understand
  him, Hankel would thus insist that every sign signifies something;
  but I think he would be unhappy with the (Fregean-sounding) claim
  that every sign must *designate* something.
 
<i lang="de">eindeutig</i>
: one-valued. Hankel generally uses this word to express that an
  operation is (as we would now put it) *injective*, i.e., different
  inputs give different outputs (or equivalently, if the outputs are
  the same, so must be the inputs, which is Hankel's usual way of
  thinking about it). But he does not always distinguish this clearly
  from its converse, the operation's being *functional* (the same
  inputs give the same output), especially in more informal glosses
  (see for example [page 2](#p.2) or [page 18--19](#p.19)).

<i lang="de">verknüpfen; Verknüpfung</i>
: conjoin, combine; conjunction, combination, operation. Hankel thinks
  of arithmetical operations like addition as *conjoining* or *putting
  together* two numbers. Thus $1 + 2$ is a conjunction of $1$ and $2$,
  in which the operation $+$ combines these two numbers into one. The
  noun form <i>Verknüpfung</i> exhibits a three-way ambiguity between
  the act of combining, the result of the combination, and the
  operator which combines them (see for example the first paragraph of
  [§3](#pz3)). No single English word suffices to capture all three
  senses, so I have done my best to pick the relevant one, and left it
  up to the annotations to make the connection between them clear.
  

### Corrections

I have corrected printing errors in the German where the intended text
was clear, and marked the corrected phrase in the HTML.

### Acknowledgments

This work was funded in part by the Austrian Science Fund grant ESP
211-G, as part of the project
["Frege among the Formalists"](https://pf.fwf.ac.at/en/research-in-practice/project-finder/58366).
I am grateful for their support.

