# ICP-Wallet

Este guia descreve o processo de configuração e criação de uma carteira ICP (Internet Computer Protocol) no terminal Linux, utilizando a ferramenta `dfx` (parte do SDK DFINITY). Siga as instruções abaixo para instalar o SDK e configurar sua carteira no Internet Computer.

## Índice

1. [Pré-requisitos](#pré-requisitos)
2. [Instalação do DFINITY SDK](#instalação-do-dfinity-sdk)
3. [Configuração do Ambiente Local](#configuração-do-ambiente-local)
4. [Implantação do Canister da Carteira](#implantação-do-canister-da-carteira)
5. [Gerenciamento de Identidades](#gerenciamento-de-identidades)
6. [Comandos Principais](#comandos-principais)

---

### Pré-requisitos

- Sistema operacional Linux
- Acesso ao terminal
- Conexão com a Internet para baixar o DFINITY SDK

---

### 1. Instalação do DFINITY SDK

Para começar, instale o SDK do DFINITY, que inclui a ferramenta `dfx`, utilizada para desenvolver e interagir com aplicações no Internet Computer.

Execute o seguinte comando no terminal para instalar o `dfx`:

```bash
sh -ci "$(curl -fsSL https://sdk.dfinity.org/install.sh)"
```

Verificação da Instalação:

Após a instalação, verifique se o dfx foi instalado corretamente executando:

```bash
dfx --version
```

Configuração do Ambiente Local
Agora, inicie o ambiente local do Internet Computer para que você possa interagir com o blockchain de forma local:

```bash
dfx start --background
```

Esse comando inicia o Internet Computer em segundo plano, permitindo que você implemente e teste contratos localmente.

Implantação do Canister da Carteira
Após o ambiente estar configurado, implante o contrato que funcionará como a sua carteira. Execute:

```bash
dfx deploy
```

Isso criará um "canister" – uma unidade de armazenamento e execução no Internet Computer – que servirá como sua carteira.

```bash
```

```bash
```
