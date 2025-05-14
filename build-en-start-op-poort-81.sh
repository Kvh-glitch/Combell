#!/bin/bash

docker build -t demo-site-image

docker run -d --name demo-site -p 81:80 demo-site-image .
