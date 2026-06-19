#!/bin/bash

docker build -t zero:v1 .

docker rm -f zero || true

docker run -d --name zero -p 8080:80 zero:v1
