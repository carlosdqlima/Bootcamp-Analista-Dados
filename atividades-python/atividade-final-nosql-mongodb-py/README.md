# Sistema de Gerenciamento de Livros

Implemente, em Python, um sistema de gerenciamento de livros no terminal, onde os usuários podem adicionar, consultar, atualizar e remover livros de um banco de dados MongoDB com PyMongo.

## Requisitos

### Estrutura do Livro:
- **titulo** (string): Título do livro
- **autor** (string): Autor do livro
- **ano** (int): Ano de publicação
- **isbn** (string): ISBN do livro

### Operações CRUD:
- **Create**: Adicionar um novo livro ao banco de dados.
- **Read**: Listar todos os livros cadastrados ou buscar por título, autor ou ISBN.
- **Update**: Atualizar as informações de um livro (permitir modificar qualquer campo).
- **Delete**: Remover um livro do banco de dados pelo ISBN.

## Funcionalidades:
- **Adicionar Livro**: Permitir ao usuário inserir os dados de um livro e armazenar no MongoDB.
- **Listar Livros**: Mostrar todos os livros cadastrados.
- **Buscar Livro**: Buscar um livro por título, autor ou ISBN.
- **Atualizar Livro**: Permitir atualizar qualquer informação de um livro, buscando pelo ISBN.
- **Remover Livro**: Remover um livro do banco de dados através do ISBN.