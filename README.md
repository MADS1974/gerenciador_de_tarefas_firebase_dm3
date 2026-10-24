# 📋 Gerenciador de Tarefas - IFSP

Este é um aplicativo mobile desenvolvido em **Flutter/Dart**, atualizado para a **Avaliação 2 (DM3)**. Nesta nova versão, a persistência de dados foi migrada de um banco local (SQLite) para armazenamento em nuvem em tempo real utilizando o **Firebase Cloud Firestore**. O projeto demonstra a implementação de operações CRUD (Criar, Ler, Atualizar e Deletar) integradas aos serviços na nuvem do Google.

---

## 🚀 Funcionalidades Implementadas

* **Listagem Dinâmica:** Tela principal que exibe todas as tarefas cadastradas, lidas diretamente da coleção `tarefas` no Firestore.
* **Cadastro de Itens:** Interface de formulário para inserção de novos registros, capturando o título e gerando automaticamente a data e a hora da criação.
* **Gestão de Status:** Capacidade de atualizar uma atividade e marcá-la como "Tarefa Concluída", aplicando um feedback visual imediato na lista principal (texto rasurado e ícone de validação).
* **Exclusão Segura:** Opção para deletar itens existentes mediante um alerta de confirmação em tela.

---

## 🛠️ Tecnologias e Pacotes

A arquitetura do projeto foi estruturada utilizando as seguintes ferramentas:

* 🎯 **Linguagem:** Dart
* 📱 **Framework:** Flutter
* ☁️ **Banco de Dados (Nuvem):** Firebase Cloud Firestore
* 📦 **Dependências Principais:** 
  * `firebase_core`: Para inicialização e comunicação principal com os serviços Firebase.
  * `cloud_firestore`: Para leitura e gravação de documentos NoSQL em tempo real na nuvem.

---

## 🗃️ Estrutura de Dados (Cloud Firestore)

Os dados são armazenados na nuvem em uma coleção chamada `tarefas`. Cada documento na coleção representa uma tarefa e contém os seguintes campos:

* `id` **(String):** O ID único do documento gerado automaticamente pelo Firestore (utilizado no código, não salvo como atributo do documento).
* `titulo` **(String):** Armazena a descrição da atividade.
* `data` **(String):** Regista o momento exato da criação da tarefa.
* `concluida` **(Boolean):** Atua como um controle para indicar se a tarefa foi finalizada (`false` para tarefa pendente, `true` para tarefa concluída).
