distro: register clean build upload

init:
	pip install -r requirements.txt

init-dev:
	pip install -r requirements-dev.txt

doc:
	pandoc --from=markdown --to=rst --output="README.rst" "README.md"

clean:
	-rm -fr dist
	-rm -fr __pycache__
	-rm -fr hashfile/__pycache__
	-rm -fr build

build:
	python3 setup.py sdist
	python3 setup.py bdist_wheel

upload:
	twine upload dist/hashfile*

register:
	python setup.py register
