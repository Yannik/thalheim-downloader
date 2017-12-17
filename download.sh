#!/bin/sh

wget -r -np -nH --cut-dirs=3 -R 'index.html*' -e robots=off -N https://www.is.informatik.uni-kiel.de/\~thalheim/vorlesungen/Informationssysteme/Uebungsblaetter/
wget -r -np -nH --cut-dirs=3 -R 'index.html*' -e robots=off -N https://www.is.informatik.uni-kiel.de/~thalheim/vorlesungen/Informationssysteme/Weiteres%20Material/
wget -r -np -nH --cut-dirs=3 -R 'index.html*' -e robots=off -N https://www.is.informatik.uni-kiel.de/~thalheim/vorlesungen/Informationssysteme/Vollskript%20optional/
wget -r -np -nH --cut-dirs=3 -R 'index.html*' -e robots=off -N https://www.is.informatik.uni-kiel.de/~thalheim/vorlesungen/Informationssysteme/Vorlesungsfolien/
