#!/bin/bash

if [ "$#" -gt 0 ]; then
    # Inicialização do container
    if [ "$1" = "build" ]; then
        echo 'Construindo imagem do k6...'
        # Cria um arquivo Dockerfile temporário
        echo 'FROM grafana/k6' >Dockerfile.temp
        # Constrói a imagem do Docker com base no arquivo Dockerfile.temp
        docker build -t k6-container -f Dockerfile.temp .
        # Remove o arquivo Dockerfile.temp
        rm Dockerfile.temp
    fi
    # Executar o container em modo interativo
    if [ "$1" = "run" ]; then
        echo 'Executando o container do k6 em modo interativo...'
        # Executa o container a partir da imagem k6-container com um volume para o diretório atual
        docker run -it --name k6 -v "$(pwd):/scripts" k6-container run /scripts/test.js
    fi
    # Parar e remover o contêiner
    if [ "$1" = "stop" ]; then
        echo 'Parando e removendo o container do k6...'
        docker stop k6
        docker rm k6
    fi
else
    echo 'Comando inválido. Use "build" para construir a imagem, "run" para executar o container em modo interativo ou "stop" para parar e remover o container.'
fi
