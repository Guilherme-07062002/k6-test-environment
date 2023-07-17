<a id="topo"></a>

# K6 Test Container

[Ler em Português](#portugues)

This repository provides a Docker container with the K6 tool, which enables users to perform performance testing on their applications. With the K6 Test Container, you can quickly set up and run performance tests without the need for complex configuration.

## Getting Started

To use the K6 Test Container, follow these steps:

* Install Docker on your system if you haven't already.
* Clone this repository to your local machine.
* Before running any scripts, make sure to give execute permission to the script files. You can use the chmod command for that, for example:

```bash
chmod +x cmd
```

* Build the Docker image using the provided script:

```bash
./cmd build
```

* Run the container interactively:

```bash
./cmd run
```

* Inside the container, you can execute K6 commands and run performance tests using the available scripts.

## Usage

The K6 Test Container provides a convenient environment for running performance tests with K6. Here are some key points to keep in mind:

* Customize the K6 settings according to your testing needs.
* Update the URL in the test.js file with the target API URL you want to test:

```javascript
// test.js
const url = "https://api.example.com"; // Replace with your API URL.
```

<a id="portugues"></a>

---

# Português

[Voltar para o topo](#topo)

## Primeiros Passos

Este repositório fornece um container Docker com a ferramenta K6, que permite aos usuários realizar testes de desempenho em suas aplicações. Com o K6 Test Container, você pode configurar e executar testes de desempenho de forma rápida, sem a necessidade de configurações complexas.
Primeiros Passos

Para usar o K6 Test Container, siga estes passos:

* Instale o Docker em seu sistema, caso ainda não o tenha feito.
* Clone este repositório em sua máquina local.
* Antes de executar qualquer script, certifique-se de conceder permissão de execução aos arquivos de script. Você pode usar o comando chmod para isso, por exemplo:

```bash
chmod +x cmd
```

* Construa a imagem do Docker usando o script fornecido:

```bash
./cmd build
```

* Execute o container em modo interativo:

```bash
./cmd run
```

* Dentro do container, você pode executar comandos do K6 e executar testes de desempenho usando os scripts disponíveis.

## Uso

O K6 Test Container oferece um ambiente conveniente para executar testes de desempenho com o K6. Aqui estão alguns pontos-chave a serem lembrados:

* Personalize as configurações do K6 de acordo com suas necessidades de teste.
* Atualize a URL no arquivo test.js com a URL da API de destino que você deseja testar:

```javascript
// test.js
const url = "https://api.example.com"; // Substitua pela URL da sua API.
```

[Voltar para o topo](#topo)