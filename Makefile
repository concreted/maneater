all: epub html pdf pdf-latex

epub:
	pandoc frontmatter.md maneater.md copyright.md title.txt -c epub.css -o maneater.epub --standalone

html:
	pandoc links.md frontmatter.md maneater.md copyright.md title.txt -c html.css -o maneater.html --standalone
	cp maneater.html index.html

pdf:
	pandoc frontmatter.md maneater.md copyright.md title.txt -c html.css -o maneater.pdf --standalone --pdf-engine=C:\Users\arich\AppData\Local\Programs\wkhtmltopdf\bin\wkhtmltopdf

pdf-latex:
	pandoc frontmatter.md maneater.md copyright.md title.txt -c html.css -o maneater_latex.pdf --standalone --pdf-engine=C:\Users\arich\AppData\Local\Programs\MiKTeX\miktex\bin\x64\pdflatex
