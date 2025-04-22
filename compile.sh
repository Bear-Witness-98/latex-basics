#!/bin/bash

tex2pdf(){
    # $1 is a .tex file
    # bibtext uses the <file>.aux file to generate bibliography
    pdflatex "${1}" 
    bibtex "${1}"
    pdflatex "${1}"
    pdflatex "${1}"

}