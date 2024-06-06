all: epub html pdf

epub:
	pandoc maneater.md title.txt -c epub.css -o maneater.epub --standalone

html:
	pandoc maneater.md title.txt -c html.css -o maneater.html --standalone

pdf:
	pandoc maneater.md title.txt -c html.css -o maneater.pdf --standalone --pdf-engine=C:\Users\arich\AppData\Local\Programs\wkhtmltopdf\bin\wkhtmltopdf

pdf-latex:
	pandoc maneater.md title.txt -c html.css -o maneater_latex.pdf --standalone --pdf-engine=C:\Users\arich\AppData\Local\Programs\MiKTeX\miktex\bin\x64\pdflatex
