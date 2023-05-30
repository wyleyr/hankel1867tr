# Just a stupid-simple build process for now: 
build/parallel.html: parallel.css 00-Titlepage.md 01-Preface.md 02-TOC.html 03-I-Exposition.md 
	pandoc -o build/parallel.html\
		-f markdown+raw_html -t html \
		--standalone \
		--mathml \
		--css=parallel.css \
		metadata.md \
		--include-in-header=HEAD.html \
		--include-after-body=FOOT.html \
		00-Titlepage.md\
		01-Preface.md\
		02-TOC.html \
		03-I-Exposition.md && \
	cp parallel.css build/

# Serve the built version via Github Pages:
docs/index.html: build/parallel.html build/parallel.css
	cp build/parallel.html docs/index.html && \
	cp build/parallel.css docs/parallel.css

gh_pages: docs/index.html
	git add docs && \
	echo "New version staged"
