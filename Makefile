all: mod float run example 

mod:
	chmod +x *
	chmod +x source/*
	
float:
	python3 source/floatgen.py 1000 rand
	
run: brute div ediv

brute:
	python3 bruteforce rand
	
div:
	python3 divideandconquer rand
	
ediv:
	python3 enhanceddnc rand
	
example:
	python3 divideandconquer example.input
	python3 enhanceddnc example.input
	python3 bruteforce example.input
	
testint:
	python3 divideandconquer points.10000.int.input
	python3 enhanceddnc points.10000.int.input	
	python3 bruteforce points.10000.int.input
	
testfloat:
	python3 divideandconquer points.10000.float.input
	python3 enhanceddnc points.10000.float.input
	python3 bruteforce points.10000.float.input

clean:
	rm -rf ./*~
	rm -rf ./source/*~
	rm -rf ./source/__pycache__
	rm output_bruteforce.txt
	rm output_divideandconquer.txt
	rm output_enhanceddnc.txt
