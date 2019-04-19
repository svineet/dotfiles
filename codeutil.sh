#!/usr/bin/env bash
g++ $1 -std=c++14 -o $1.o && ./$1.o < sample.in
