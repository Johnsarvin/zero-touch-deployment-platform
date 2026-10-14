#!/bin/bash

docker build -t zero:v2 .

docker rm -f zero || true

docker run -d --name zero -p 9123:80 zero:v2
