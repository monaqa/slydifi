#!/bin/sh -l

eval $(opam env)

opam update
opam install satysfi-base satysfi-easytable

rm -rf /home/gitpod/.satysfi
satyrographos install
