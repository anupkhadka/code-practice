#!/bin/bash

let "celsius=($1 - 32) * 5/9"
echo $1 Fahrenheit = $celsius Celsius 
