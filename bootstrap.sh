#!/usr/bin/env bash

apt update 
apt install python3.8 python3-pip python3.8-ven -y 
pip3 install virtualenv  
virtualenv superx --python=python3.8
source superx/bin/activate
pip3 install flask Flask-SQLAlchemy Flask-Bootstrap SQLAlchemy flask_login flask_wtf pymysql pytest requests


export FLASK_APP=/vagrant/superx/app.py

export FLASK_ENV=development

flask run -h 0.0.0.0 -p 5000
