#!/bin/sh
gunicorn wsgi:app -w 4 -b 0.0.0.0:80 --capture-output --log-level debug