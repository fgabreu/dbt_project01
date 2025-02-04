# Visão Geral do Projeto

Bem-vindo ao `dbt_project01`! Este projeto foi projetado para transformar dados brutos em insights significativos usando o dbt (data build tool). Abaixo está uma visão geral dos principais componentes e da estrutura deste projeto.

## Estrutura do Projeto

- **models/**
    - Contém arquivos SQL que definem as transformações e modelos.
- **data/**
    - Armazena arquivos de dados brutos usados para transformações.
- **snapshots/**
    - Armazena arquivos de snapshot para capturar mudanças de dados ao longo do tempo.
- **tests/**
    - Inclui testes para garantir a qualidade e integridade dos dados.
- **macros/**
    - Macros personalizadas para estender a funcionalidade do dbt.

## Modelos Principais

- **staging**
    - Modelos intermediários que limpam e preparam os dados brutos.
- **marts**
    - Modelos finais que estão prontos para análise e relatórios.

## Começando

1. **Instalar dbt**: Siga o [guia de instalação do dbt](https://docs.getdbt.com/docs/installation) para configurar o dbt em sua máquina.
2. **Configurar Perfis**: Configure seu arquivo `profiles.yml` para conectar ao seu data warehouse.
3. **Executar Modelos**: Use `dbt run` para executar os modelos e transformar os dados.
4. **Testar Modelos**: Use `dbt test` para executar testes e validar os dados.

## Recursos

- [Documentação do dbt](https://docs.getdbt.com/)
- [Comunidade dbt no Slack](https://community.getdbt.com/)

