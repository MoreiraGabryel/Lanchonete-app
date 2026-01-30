#!/usr/bin/env bash
# Gera docs/diagram.svg a partir de docs/diagram.puml usando plantuml.jar
# Requisitos: Java e Graphviz (dot) instalados. Coloque plantuml.jar em tools/plantuml.jar
# ou defina a variável de ambiente PLANTUML_JAR apontando para o jar.

set -e

PUML="docs/diagram.puml"
OUTDIR="docs"
PLANTUML_JAR="${PLANTUML_JAR:-tools/plantuml.jar}"

if [ ! -f "$PUML" ]; then
  echo "Erro: arquivo $PUML não encontrado."
  exit 1
fi

if [ ! -f "$PLANTUML_JAR" ]; then
  echo "Erro: plantuml.jar não encontrado em $PLANTUML_JAR."
  echo "Baixe em https://plantuml.com/pt/download e coloque em tools/plantuml.jar"
  exit 1
fi

echo "Gerando diagrama a partir de $PUML..."
java -jar "$PLANTUML_JAR" -tsvg -o "$OUTDIR" "$PUML"
echo "Diagrama gerado: $OUTDIR/diagram.svg"
