# 📋 To-Do List App

Aplicativo de lista de tarefas (To-Do List) criado com **Flutter** para gerenciar suas tarefas de forma prática e organizada. Utilizando o **Provider** para a gestão de estado, **SQLite** para armazenamento local de dados e **Firebase** para autenticação de usuários. A arquitetura de módulos garante que as dependências sejam carregadas apenas quando necessárias, tornando o aplicativo mais eficiente.

## 🚀 Funcionalidades

- **Autenticação de Usuário:**
  - Login com email e senha.
  - Login com conta Google.
  - Cadastro de novos usuários.

- **Gerenciamento de Tarefas:**
  - Adicionar, editar e excluir tarefas.
  - Seleção de data para exibição de tarefas específicas.
  - Filtragem de tarefas por data e status.

## 🛠️ Ambiente de Desenvolvimento
![VSCode](https://img.shields.io/badge/VSCode-007ACC?logo=visual-studio-code&logoColor=white&style=for-the-badge)
![Dart](https://img.shields.io/badge/Dart-0175C2?logo=dart&logoColor=white&style=for-the-badge)
![Flutter](https://img.shields.io/badge/Flutter-02569B?logo=flutter&logoColor=white&style=for-the-badge)
![Provider](https://img.shields.io/badge/Provider-007ACC?logo=flutter&logoColor=white&style=for-the-badge)
![SQLite](https://img.shields.io/badge/SQLite-003B57?logo=sqlite&logoColor=white&style=for-the-badge)
![Firebase](https://img.shields.io/badge/Firebase-FFCA28?logo=firebase&logoColor=black&style=for-the-badge)
![Linux Manjaro](https://img.shields.io/badge/Linux%20Manjaro-007A33?logo=linux-manjaro&logoColor=white&style=for-the-badge)
![Git](https://img.shields.io/badge/Git-F05032?logo=git&logoColor=white&style=for-the-badge)
![GitHub](https://img.shields.io/badge/GitHub-181717?logo=github&logoColor=white&style=for-the-badge)


- **Flutter**: Framework para criação de aplicativos multiplataforma.
- **Provider**: Gerenciamento de estado reativo e fácil de manter.
- **SQLite**: Armazenamento local das tarefas, garantindo acesso offline.
- **Firebase**: Autenticação de usuário segura e integrada com Google Sign-In.

## 🏗️ Arquitetura do Projeto

O projeto segue uma **arquitetura modular**, onde cada módulo é responsável por uma parte específica do sistema. Essa abordagem facilita a manutenção e o crescimento do aplicativo.

- **`core/`**: Contém utilitários e componentes genéricos que podem ser usados por outros módulos.
- **`models/`**: Classes que representam os modelos de dados do aplicativo.
- **`modules/`**: Cada módulo específico da aplicação, como o módulo de tarefas.
- **`repositories/`**: Classes responsáveis pela comunicação com a base de dados.
- **`services/`**: Camada que centraliza a lógica de negócios e operações mais complexas.
- **`app_module.dart`**: Configurações gerais da aplicação, que ficam ativas durante toda a execução. Gerencia as dependências que precisam ser compartilhadas entre diferentes partes do app.

## 🖥️ Telas do Aplicativo

- **Tela de Login/Cadastro**: 
  - Permite o login com email/senha ou com conta Google.
- **Tela de Listagem de Tarefas**: 
  - Exibe as tarefas do usuário com a possibilidade de selecionar uma data para ver tarefas específicas.
- **Tela de Adição/Edição de Tarefas**:
  - Permite adicionar novas tarefas ou editar as existentes.
- **Filtragem de Tarefas**:
  - Filtro de tarefas por data ou status, facilitando a visualização.

## 📲 Como Executar o Projeto

### 1. Clone o Repositório

Clone o repositório do projeto utilizando o comando:

`git clone https://github.com/JennieOliveira99/ToDoListFLUTTER.git`

### 2. Acesse a Pasta do Projeto

Navegue até a pasta do projeto:

`cd ToDoListFLUTTER`

### 3. Instale as Dependências do Flutter

Execute o comando abaixo para instalar as dependências necessárias:

`flutter pub get`

### 4. Configure o Firebase

Adicione o arquivo `google-services.json` (para Android) ou `GoogleService-Info.plist` (para iOS) conforme as instruções da documentação oficial do Firebase.

### 5. Execute o Aplicativo

Após a configuração, você pode executar o aplicativo utilizando o comando:

`flutter run`

### 📚 Pré-requisitos

Antes de executar o projeto, certifique-se de ter os seguintes requisitos:

- **Flutter SDK**: Certifique-se de ter o Flutter instalado e configurado. Consulte o [Guia de instalação do Flutter](https://flutter.dev/docs/get-started/install).
- **Firebase**: Uma conta no Firebase com um projeto configurado.
- **SQLite**: Já integrado no projeto através do package `sqflite`.


## 📄 Licença
Este projeto está sob a licença MIT. Consulte o arquivo LICENSE para mais informações.



## Desenvolvido com 💙 por JennieOliveira99.
