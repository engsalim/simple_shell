#! /usr/bin/env bash
set -e

cd  "$(dirname  "$(readlink -f  "$BASH_SOURCE")")/"

# consulte también ".mailmap" para ver cómo se desduplican las direcciones y los nombres de correo electrónico

{
 gato  <<- 'EOH'
# Este archivo enumera todas las personas que han contribuido con contenido al repositorio.
# Para saber cómo se genera, ver 'hack/generate-authors.sh'.
	EOH
	eco
git log --format='%aN <%aE>'  | LC_ALL=C.UTF-8 ordenar -uf
} > AUTORES


