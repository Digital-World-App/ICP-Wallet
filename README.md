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

Gerenciamento de Identidades
Para interagir com o canister, é necessário criar um Identificador Principal (Principal ID). Este identificador permite autenticação e acesso a sua carteira.

Criação de um Identificador:

```bash
dfx identity new my-identity
```

Listagem de Identidades:

Para confirmar o ID criado, use:

```bash
dfx identity list
```

Definir a identidade ativa:

```bash
dfx identity use <nome_da_identidade>
```

Exibir a identidade ativa atual:

```bash
dfx identity whoami
```

Mostrar o Principal associado à identidade atual:

```bash
dfx identity get-principal
```

Importar uma identidade de um arquivo PEM:

```bash
dfx identity import <arquivo_pem>
```

Exportar a chave privada (PEM) da identidade atual:
Nota: Isso não deve ser feito sem uma boa razão, pois comprometer a chave privada pode resultar em perdas.

```bash
dfx identity export
```

Remover uma identidade existente:

```bash
dfx identity remove <nome_da_identidade>
```

Renomear uma identidade existente:

```bash
dfx identity rename <nome_antigo> <nome_novo>
```
