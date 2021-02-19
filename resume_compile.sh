#!/bin/bash

while [ "$#" -gt 0 ]; do
  case "$1" in
  --fname=*)
    fnarg="${1#*=}"
    ;;
  --lname=*)
    lnarg="${1#*=}"
    ;;
  --myemail=*)
    emarg="${1#*=}"
    ;;
  --mophone=*)
    pharg="${1#*=}"
    ;;
  *) : ;;
  esac
  shift
done

fname="${fnarg:-Dude}"
lname="${lnarg:-Lebowsky}"
myemail="${emarg:-test@test.com}"
mophone="${pharg:-(555)555-5555}"

pdflatex "\def\fname{$fname} \def\lname{$lname} \def\myemail{$myemail} \def\mophone{$mophone} \input{cv_8.tex}"
