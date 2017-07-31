#!/bin/bash

gunicorn --name tinygoogle -b 0.0.0.0:5488 -w 2 app:app

