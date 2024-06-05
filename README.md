# Workshop SpringBoot3 JPA

## Descrição

Este projeto é uma API desenvolvida como parte de um workshop do curso de Java do professor Nélio Alves. A aplicação foi dockerizada por mim e seu deploy foi feito utilizando o serviço Render.

## Endpoints

A API está disponível publicamente e pode ser acessada através do seguinte URL: [https://workshop-springboot3-jpa-e36a.onrender.com]

## Tecnologias Utilizadas

- **Java 17**
- **Spring Boot**
- **Maven**
- **Docker**
- **H2 (banco de dados em memória para testes)**
- **Render (para deploy na nuvem)**
- **PostgreSQL (banco de dados na nuvem)**

## Como Executar Localmente

### Pré-requisitos para construir a aplicação

- Docker instalado
- Java 17 instalado
- Maven instalado

### Passos: Construção da Imagem/Projeto no servidor local

1. Clone o repositório:

    ```bash
    git clone https://github.com/gabrafo/workshop-springboot3-jpa
    cd course
    ```

2. Configure as variáveis de ambiente para o banco de dados:

    Crie um arquivo `.env` na raiz do projeto com o valor das variáveis da conexão PostgreSQL instanciada localmente na sua máquina (caso o acesso público do deploy não esteja disponível).

    ```env
    db_url=jdbc:postgresql://<SEU_DB_URL>
    db_username=<SEU_DB_USERNAME>
    db_password=<SEU_DB_PASSWORD>
    ```

    Caso não queira utilizar o PostgreSQL, saiba que também é possível fazer uso do banco de dados H2 através do console utilizando o perfil "test" no `application.properties`.

3. Construa o projeto e crie a imagem Docker:

    ```bash
    docker build -t course .
    ```

**OBS:** Lembre-se de adicionar credenciais no comando caso seja necessário.

4. Execute o contêiner Docker:

    ```bash
    docker run --env-file .env -p 8080:8080 course
    ```

 ## Acessando os Endpoints na Nuvem/Localmente

 ### Passos: Testando os Endpoints da aplicação

Após construir e executar localmente a aplicação, ou acessar a versão online a partir da URL do Render, você pode testar os endpoints usando o Postman ou qualquer outra ferramenta de cliente HTTP. Aqui estão alguns exemplos de como testar os endpoints principais:

1. **Orders (Pedidos):**
   - **GET:** Recupere todos os pedidos:
     - Localmente:
       ```
       GET http://localhost:8080/orders
       ```

     - Na nuvem (Render):
       ```
       GET https://workshop-springboot3-jpa-e36a.onrender.com/orders
       ```

   - **GET:** Recupere um pedido específico por ID:
     - Localmente:
       ```
       GET http://localhost:8080/orders/{id}
       ```

     - Na nuvem (Render):
       ```
       GET https://workshop-springboot3-jpa-e36a.onrender.com/orders/{id}
       ```

2. **Products (Produtos):**
   - **GET:** Recupere todos os produtos:
     - Localmente:
       ```
       GET http://localhost:8080/products
       ```

     - Na nuvem (Render):
       ```
       GET https://workshop-springboot3-jpa-e36a.onrender.com/products
       ```

   - **GET:** Recupere um produto específico por ID:
     - Localmente:
       ```
       GET http://localhost:8080/products/{id}
       ```

     - Na nuvem (Render):
       ```
       GET https://workshop-springboot3-jpa-e36a.onrender.com/products/{id}
       ```

3. **Categories (Categorias):**
   - **GET:** Recupere todas as categorias:
     - Localmente:
       ```
       GET http://localhost:8080/categories

     - Na nuvem (Render):
       ```
       GET https://workshop-springboot3-jpa-e36a.onrender.com/categories
       ```
   - **GET:** Recupere uma categoria específica por ID:
     - Localmente:
       ```
       GET http://localhost:8080/categories/{id}
       ```
     - Na nuvem (Render):
       ```
       GET https://workshop-springboot3-jpa-e36a.onrender.com/categories/{id}
       ```

4- **Usuários (Users):**
   - **GET:** Recupere todos os usuários:
     - Localmente:
       ```
       GET http://localhost:8080/users
       ```

     - Na nuvem (Render):
       ```
       GET https://workshop-springboot3-jpa-e36a.onrender.com/users
       ```

   - **GET:** Recupere um usuário específico por ID:
     - Localmente:
       ```
       GET http://localhost:8080/users/{id}
       ```

     - Na nuvem (Render):
       ```
       GET https://workshop-springboot3-jpa-e36a.onrender.com/users/{id}
       ```

   - **POST:** Adicione um novo usuário:
     - Localmente:
       ```
       POST http://localhost:8080/users
       ```

       Corpo da requisição (JSON):
       ```json
       {
           "name": "Novo Usuário",
           "email": "novo@usuario.com",
           "phone": "123456789"
           "password": "batatinha123"
       }
       ```

     - Na nuvem (Render):
       ```
       POST https://workshop-springboot3-jpa-e36a.onrender.com/users
       ```

       Corpo da requisição (JSON):
       ```json
       {
           "name": "Novo Usuário",
           "email": "novo@usuario.com",
           "phone": "123456789"
           "password": "batatinha123"
       }
       ```

   - **PUT:** Atualize um usuário existente por ID:
     - Localmente:
       ```
       PUT http://localhost:8080/users/{id}
       ```

       Corpo da requisição (JSON):
       ```json
       {
           "name": "Nome Atualizado",
           "email": "atualizado@usuario.com",
           "phone": "987654321"
       }
       ```

     - Na nuvem (Render):
       ```
       PUT https://workshop-springboot3-jpa-e36a.onrender.com/users/{id}
       ```

       Corpo da requisição (JSON):
       ```json
       {
           "name": "Nome Atualizado",
           "email": "atualizado@usuario.com",
           "phone": "987654321"
       }
       ```

   - **DELETE:** Exclua um usuário por ID:
     - Localmente:
       ```
       DELETE http://localhost:8080/users/{id}
       ```

     - Na nuvem (Render):
       ```
       DELETE https://workshop-springboot3-jpa-e36a.onrender.com/users/{id}
       ```
