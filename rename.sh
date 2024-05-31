#!/bin/bash

# Copy directories and files
cp -r web_flask/static web_dynamic/
cp web_flask/templates/100-hbnb.html web_dynamic/templates/
cp web_flask/__init__.py web_dynamic/
cp web_flask/100-hbnb.py web_dynamic/

# Rename files
mv web_dynamic/templates/100-hbnb.html web_dynamic/templates/0-hbnb.html
mv web_dynamic/100-hbnb.py web_dynamic/0-hbnb.py

# Update route in 0-hbnb.py
sed -i '' 's/\/hbnb/\/0-hbnb/g' web_dynamic/0-hbnb.py