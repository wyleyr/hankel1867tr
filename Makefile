VERSION="1.1-pre" # version for next release

build/parallel.html: parallel.css 00-Titlepage.md 01-Preface.md 02-TOC.md 03-I-Exposition.md 04-II-GeneralTheoryOfForms.md 05-III-RealNumbersInTheirFormalConcept.md 06-IV-RealNumbersInTheTheoryOfMagnitude.md
	pandoc -o build/parallel.html\
		-f markdown+raw_html -t html \
		--standalone \
		--mathml \
		--css=parallel.css \
		--template=templates/parallel \
		-V version=${VERSION}\
		--section-divs \
		metadata.md \
		00-Titlepage.md\
		01-Preface.md\
		02-TOC.md\
		03-I-Exposition.md \
		04-II-GeneralTheoryOfForms.md \
		05-III-RealNumbersInTheirFormalConcept.md \
		06-IV-RealNumbersInTheTheoryOfMagnitude.md &&\
	cp parallel.css build/

# Serve the built version via Github Pages:
docs/index.html: build/parallel.html build/parallel.css
	cp build/parallel.html docs/index.html && \
	cp build/parallel.css docs/parallel.css

gh_pages: docs/index.html
	git add docs && \
	echo "New version staged"
