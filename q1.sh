#!/bin/bash 

read -p 'Insira aqui um arquivo: ' aqv
tr -s "1A2A3A4A5B6B7B8B9B" 'Z' < $aqv

