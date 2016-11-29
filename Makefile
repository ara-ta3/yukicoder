virtualenv=$(shell which virtualenv)
main=main.py
in=in.txt

yukicoder471:
	$(MAKE) run main=no47.py in=no471.txt

yukicoder472:
	$(MAKE) run main=no47.py in=no472.txt

yukicoder473:
	$(MAKE) run main=no47.py in=no473.txt

yukicoder461:
	$(MAKE) run main=no46.py in=no461.txt

yukicoder462:
	$(MAKE) run main=no46.py in=no462.txt

yukicoder463:
	$(MAKE) run main=no46.py in=no463.txt

yukicoder1: 
	$(MAKE) run in=sample1.txt

yukicoder2: 
	$(MAKE) run in=sample2.txt

run: bin/python
	$< $(main) < $(in)

install: bin/pip
	$< install -r requirements.txt

bin/pip:
	$(MAKE) virtualenv

bin/python:
	$(MAKE) virtualenv

$(virtualenv):
	$@ . -p python3

