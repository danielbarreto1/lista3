#!/bin/bash

read -p "Arquivo selecionado: " aqv
echo "  "
tr -s "\n" < $aqv
