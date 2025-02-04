# dbt_project01

Bem-vindo ao `dbt_project01`! Este projeto foi projetado para transformar dados brutos em insights significativos usando o dbt (data build tool). Abaixo está uma visão geral dos principais componentes e da estrutura deste projeto.

## Estrutura do Projeto

- **models/**
    - Contém arquivos SQL que definem as transformações e modelos.
- **analyses/**
    - Armazena análises adicionais que podem ser executadas no dbt.
- **snapshots/**
    - Armazena arquivos de snapshot para capturar mudanças de dados ao longo do tempo.
- **tests**
    - Inclui testes para garantir a qualidade e integridade dos dados.
- **macros/**
    - Macros personalizadas para estender a funcionalidade do dbt.
- **seeds/**
    - Contém arquivos CSV que podem ser carregados no data warehouse.

## Modelos Principais

- **staging**
    - Modelos intermediários que limpam e preparam os dados brutos.
- **marts**
    - Modelos finais que estão prontos para análise e relatórios.

## Tabelas Utilizadas e Fluxo de Dados

### Camada de Staging

As tabelas de staging são usadas para limpar e transformar os dados brutos antes de serem carregados nas tabelas finais.


- **stg_orders**
    - Contém dados brutos de pedidos, incluindo informações sobre produtos e clientes.


### Camada Intermediate

- **stg_orders**
    - Contém dados refinados de pedidos, incluindo informações sobre produtos e clientes.


### Camada Marts

As tabelas de marts são usadas para armazenar os dados finais que estão prontos para análise e relatórios.

- **fact_orders**
    - Tabela de fatos que contém informações agregadas sobre os pedidos.




### Fluxo de Dados

1. **Extração**: Os dados são extraídos de várias fontes e carregados nas tabelas de staging.
2. **Transformação**: Os dados nas tabelas de staging são limpos e transformados.
3. **Carregamento**: Os dados transformados são carregados nas tabelas de marts.
4. **Análise**: Os dados nas tabelas de marts são usados para análise e relatórios.


## Linhagem dos Dados

![Linhagem dos Dados](/Users/felipeabreu/Downloads/dbt-dag.png)




## Começando

1. **Instalar dbt**: Siga o [guia de instalação do dbt](https://docs.getdbt.com/docs/installation) para configurar o dbt em sua máquina.
2. **Configurar Perfis**: Configure seu arquivo `profiles.yml` para conectar ao seu data warehouse.
3. **Executar Modelos**: Use `dbt run` para executar os modelos e transformar os dados.
4. **Testar Modelos**: Use `dbt test` para executar testes e validar os dados.

## Comandos Úteis

- `dbt run`: Executa todos os modelos no projeto.
- `dbt test`: Executa todos os testes definidos no projeto.
- `dbt seed`: Carrega os arquivos CSV definidos na pasta `seeds` para o data warehouse.
- `dbt snapshot`: Executa snapshots para capturar mudanças de dados ao longo do tempo.
- `dbt docs generate`: Gera a documentação do projeto.
- `dbt docs serve`: Serve a documentação gerada em um servidor local.

## Recursos

- [Documentação do dbt](https://docs.getdbt.com/)
- [Comunidade dbt no Slack](https://community.getdbt.com/)
- [Discourse do dbt](https://discourse.getdbt.com/)
- [Eventos dbt](https://events.getdbt.com)
- [Blog do dbt](https://blog.getdbt.com/)

## Contribuição

Contribuições são bem-vindas! Sinta-se à vontade para abrir issues ou pull requests para melhorias e correções.

---

Esperamos que você ache este projeto útil e que ele ajude a transformar seus dados em insights valiosos!