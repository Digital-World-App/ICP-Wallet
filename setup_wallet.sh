#!/bin/bash

# Este script ajuda a configurar e criar uma carteira ICP usando o DFINITY SDK

echo "Iniciando a instalação do DFINITY SDK..."

# Instalar DFINITY SDK
sh -ci "$(curl -fsSL https://sdk.dfinity.org/install.sh)"

# Verificar se o DFX foi instalado corretamente
if command -v dfx &> /dev/null
then
    echo "DFX foi instalado com sucesso!"
else
    echo "Erro na instalação do DFX. Verifique as permissões e tente novamente."
    exit 1
fi

echo "Iniciando o ambiente local do Internet Computer..."

# Iniciar o ambiente local
dfx start --background

echo "Implantando o canister da carteira ICP..."

# Implantar o canister
dfx deploy

echo "Carteira ICP configurada com sucesso!"
