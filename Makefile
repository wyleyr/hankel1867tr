# Just a stupid-simple build process for now: 
build/parallel.html: HEAD.html 00-Titlepage.html 01-Preface.html 02-TOC.html FOOT.html parallel.css
	cat HEAD.html 00-Titlepage.html 01-Preface.html 02-TOC.html FOOT.html > build/parallel.html && \
	cp parallel.css build/
