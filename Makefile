# Just a stupid-simple build process for now: 
build/parallel.html: HEAD.html 00-Titlepage.html 01-Preface.html 02-TOC.html 03-I-Exposition.html FOOT.html parallel.css
	cat HEAD.html 00-Titlepage.html 01-Preface.html 02-TOC.html 03-I-Exposition.html FOOT.html > build/parallel.html && \
	cp parallel.css build/

# Serve the built version via Github Pages:
docs/index.html: build/parallel.html build/parallel.css
	cp build/parallel.html docs/index.html && \
	cp build/parallel.css docs/parallel.css

gh_pages: docs/index.html
	git add docs && \
	echo "New version staged"
