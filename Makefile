virtualenv=$(shell which virtualenv)
main=main.py
in=in.txt

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

