#! /bin/bash

cc -march=native -E -v - </dev/null 2>&1 | grep cc1