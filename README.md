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

## 🛠️ Tecnologias Utilizadas

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

1. Clone o repositório:

   ```bash
   git clone https://github.com/seu-usuario/todo-list-app.git](https://github.com/JennieOliveira99/ToDoListFLUTTER)


  Acesse a pasta do projeto
cd todo-list-app




Instale as dependências do Flutter:
  ``bash flutter pub get


  
Configure o Firebase:

Adicione o arquivo google-services.json (para Android) ou GoogleService-Info.plist (para iOS) conforme as instruções da documentação oficial do Firebase.
Execute o aplicativo:

📚 Pré-requisitos
Flutter SDK: Certifique-se de ter o Flutter instalado e configurado. Guia de instalação do Flutter
Firebase: Conta no Firebase com um projeto configurado.
SQLite: Já integrado no projeto através do package sqflite.

## 📄 Licença
Este projeto está sob a licença MIT. Consulte o arquivo LICENSE para mais informações.



## Desenvolvido com 💙 por JennieOliveira99.
