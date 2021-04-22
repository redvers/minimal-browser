all:
	corral run -- ponyc -d .
	./minimal-browser
docs:
	corral run -- ponyc --docs-public --pass=docs --output=build . 

