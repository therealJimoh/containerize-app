install:
	pip install --upgrade pip &&\
		pip install pytest-cov &&\
		pip install nbval &&\
		pip install -r requirements.txt

test:
	 python -m pytest -vv --cov=myrepolib tests/*.py
	 python -m pytest --nbval notebook.ipynb

lint:
#	hadolint Dockerfile
	pylint --disable=R,C,W1203 web.py

all: install lint test