
bin:
	mkdir bin

build: bin
	v -prod -o bin/gitflow-merge .

test:
	v test .

format:
	v fmt -w .
