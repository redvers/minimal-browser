all:
	corral run -- ponyc -d .
docs:
	corral run -- ponyc --docs-public --pass=docs --output=build . 

