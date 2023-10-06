#!/bin/bash
nouveau_fichier="$1"
fichier_source="$2"

cat "$fichier_source" >> "$nouveau_fichier"

