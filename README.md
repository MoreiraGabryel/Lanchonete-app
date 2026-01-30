# Lanchonete App

Projeto backend em Spring Boot com front-end em Thymeleaf para uma lachonete: cardápio, pedidos e admin.

## Visão rápida
- **Stack:** Java + Spring Boot, Thymeleaf, JPA (H2 para dev, PostgreSQL para produção)
- **Objetivo:** MVP para aceitar pedidos online, gerenciar cardápio e visualizar pedidos.

## Diagrama de classes
O diagrama de classes fonte está em `docs/diagram.puml`. Para visualização imediata, gere `docs/diagram.svg` localmente e faça upload no repositório.

### Gerar o diagrama localmente
Requisitos: Java, Graphviz, plantuml.jar.

1. Coloque `plantuml.jar` em `tools/plantuml.jar` ou defina a variável de ambiente `PLANTUML_JAR`.
2. Torne o script executável:
```bash
chmod +x scripts/generate-diagram.sh
