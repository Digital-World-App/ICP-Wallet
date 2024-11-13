# ICP-Wallet

Este guia orienta na configuração e criação de uma carteira para o protocolo ICP (Internet Computer Protocol) em um ambiente Linux, usando a ferramenta `dfx` do SDK DFINITY. Através dessas instruções, você poderá instalar o SDK e configurar uma carteira no Internet Computer, uma rede de blockchain pública que oferece suporte a aplicativos descentralizados (dApps) em uma infraestrutura segura e escalável.

## Sobre o ICP e o DFINITY

O **Internet Computer Protocol (ICP)**, desenvolvido pela Fundação DFINITY, é uma blockchain pública que visa expandir a internet pública com um modelo descentralizado de computação. Ele permite que desenvolvedores construam e implantem aplicações seguras, sem depender de servidores centralizados. A infraestrutura do Internet Computer oferece uma nova arquitetura de blockchain em que as aplicações descentralizadas podem ser implantadas diretamente na internet pública.

O **DFINITY SDK** fornece ferramentas, incluindo o comando `dfx`, para facilitar o desenvolvimento e a implantação de canisters – unidades de código e dados armazenados na rede ICP. Essas ferramentas permitem que você gerencie identidades, crie e interaja com contratos inteligentes, e configure carteiras digitais no ambiente ICP.

---

## Índice

1. [Pré-requisitos](#pré-requisitos)
2. [Instalação do DFINITY SDK](#instalação-do-dfinity-sdk)
3. [Configuração do Ambiente Local](#configuração-do-ambiente-local)
4. [Implantação do Canister da Carteira](#implantação-do-canister-da-carteira)
5. [Gerenciamento de Identidades](#gerenciamento-de-identidades)
    - 5.1 [Criação de um Identificador](#criação-de-um-identificador)
    - 5.2 [Listagem de Identidades](#listagem-de-identidades)
    - 5.3 [Definição e Visualização da Identidade Ativa](#definição-e-visualização-da-identidade-ativa)
    - 5.4 [Importação e Exportação de Identidades](#importação-e-exportação-de-identidades)
    - 5.5 [Remoção e Renomeação de Identidades](#remoção-e-renomeação-de-identidades)
    - 5.6 [Visualização de Arquivos de Identidade no Sistema](#visualização-de-arquivos-de-identidade-no-sistema)
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

2. Configuração do Ambiente Local
Inicie o ambiente local do Internet Computer para que você possa interagir com o blockchain de forma local:

```bash
dfx start --background
```

Esse comando inicia o Internet Computer em segundo plano, permitindo que você implemente e teste contratos localmente.

3. Implantação do Canister da Carteira
Após o ambiente estar configurado, implante o contrato que funcionará como a sua carteira. Execute:

```bash
dfx deploy
```

Isso criará um "canister" – uma unidade de armazenamento e execução no Internet Computer – que servirá como sua carteira.

4. Gerenciamento de Identidades
Para interagir com o canister, é necessário criar um Identificador Principal (Principal ID). Este identificador permite autenticação e acesso a sua carteira.

 4.1 Criação de um Identificador:

```bash
dfx identity new my-identity
```

 4.2 Listagem de Identidades:

Para confirmar o ID criado, use:

```bash
dfx identity list
```

 4.3 Definir a identidade ativa:

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

4.4 Importar uma identidade de um arquivo PEM:

```bash
dfx identity import <arquivo_pem>
```

Exportar a chave privada (PEM) da identidade atual:
Nota: Isso não deve ser feito sem uma boa razão, pois comprometer a chave privada pode resultar em perdas.

```bash
dfx identity export
```

4.5 Remover uma identidade existente:

```bash
dfx identity remove <nome_da_identidade>
```

Renomear uma identidade existente:

```bash
dfx identity rename <nome_antigo> <nome_novo>
```

4.6 Visualização de Arquivos de Identidade no Sistema
Para listar as identidades no diretório de configuração do DFX:

```bash
ls ~/.config/dfx/identity
```

Para exibir a chave pública de uma identidade específica:

```bash
cat ~/.config/dfx/identity/<Nome>/identity.pub
```

Explicação:

O comando cat exibe o conteúdo de um arquivo.
~/.config/dfx/identity/<Nome>/identity.pub é o caminho para o arquivo que contém a chave pública da identidade chamada Digital_World.
Lógica: Este comando exibe a chave pública da identidade <Nome>, útil para verificação e compartilhamento seguro. As chaves públicas são seguras para serem divulgadas e usadas para criptografia assimétrica. Este arquivo .pub é gerado pelo DFX quando uma nova identidade é criada.

Exemplo de uso:

Copiar código

```bash
cat ~/.config/dfx/identity/<Nome>/identity.pub
```

5. Comandos Principais
Estes comandos ajudam a:

Listar todas as identidades configuradas para o DFX (ls ~/.config/dfx/identity).
Exibir a chave pública de uma identidade específica (cat ~/.config/dfx/identity/<Nome>/identity.pub), que pode ser usada em operações de autenticação e autorização no IC.
