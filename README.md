# ICP-Wallet

Internet coputer

Para criar uma carteira ICP (Internet Computer Protocol) no terminal Linux, você pode seguir estes passos. Vou descrever o processo para configurar a ferramenta dfx (dentro do DFINITY SDK) e criar uma carteira ICP.

Passo 1: Instale o DFINITY SDK
Instale o DFINITY SDK:

Execute o seguinte comando no terminal para instalar o dfx, a ferramenta de desenvolvimento para o Internet Computer.

sh -ci "$(curl -fsSL <https://sdk.dfinity.org/install.sh>)"

Confirme a instalação:

Após a instalação, verifique se dfx está instalado corretamente executando:

dfx --version

Inicie o ambiente local:

Em uma nova janela do terminal, inicie o ambiente local do Internet Computer, onde você poderá interagir com o blockchain localmente.

dfx start --background

Implante o contrato de carteira (canister):

Depois de iniciar o ambiente local, implante o contrato com:

dfx deploy

O dfx criará um canister, que funcionará como sua "carteira" no ambiente do Internet Computer.

Passo 3: Gerencie sua Carteira ICP
Criar um Identificador (Principal ID):

Para interagir com o canister, você precisará de um identificador principal:

dfx identity new my-identity

Para listar e confirmar o ID, use:

dfx identity list
