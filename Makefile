## This Makefile includes instructions on environment setup and lint tests
# It creates and activates a virtual environment
# Dockerfile should pass hadolint
# app.py should pass pylint


setup:
	# Create python virtualenv & activate it
	python3 -m venv venv
	. venv/bin/activate

install:
	wget -O ./hadolint https://github.com/hadolint/hadolint/releases/download/v1.16.3/hadolint-Linux-x86_64 &&\
	chmod +x ./hadolint

validate-circleci:
	# See https://circleci.com/docs/2.0/local-cli/#processing-a-config
	circleci config process .circleci/config.yml

run-circleci-local:
	# See https://circleci.com/docs/2.0/local-cli/#running-a-job
	circleci local execute

lint:
	hadolint Dockerfile
	pylint --disable=R,C,W1203 app.py

all: install lint test
