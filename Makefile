all:
	ponyc -d .
docs:
	ponyc --docs . 
	mkdocs build -f minimal-browser-docs/mkdocs.yml -t readthedocs  

