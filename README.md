# Sistema Automotivo - CRUD (Spring Boot + MySQL + HTML)

Este projeto é um sistema web para gerenciamento de estoque de veículos, desenvolvido como parte de um portfólio acadêmico utilizando princípios de orientação a objetos com Java, Spring Boot, MySQL e frontend em HTML/CSS/JS puro.

---

## Funcionalidades

- Listar veículos cadastrados
- Adicionar novo veículo
- Editar dados de um veículo
- Remover veículo do estoque
- Integração completa com API REST

---

## Tecnologias Utilizadas

### Backend
- Java 17+
- Spring Boot 3.2.x
- Spring Data JPA
- MySQL 8

### Frontend
- HTML5
- CSS3
- JavaScript puro (fetch API)

### Outros
- Postman (para testes de API)
- MySQL Workbench

---

## Estrutura do Projeto

```
sistema_automotivo/
├── src/
│   └── main/
│       └── java/br/com/sistemaautomotivo/
│           ├── Veiculo.java
│           ├── VeiculoController.java
│           ├── VeiculoRepository.java
│           └── SistemaAutomotivoApplication.java
├── resources/
│   ├── application.properties
│   └── static/index.html
└── pom.xml
```

---

## Banco de Dados

**Script SQL incluído:** `sistema_automotivo.sql`

Estrutura:
```sql
CREATE TABLE veiculo (
  id BIGINT PRIMARY KEY AUTO_INCREMENT,
  modelo VARCHAR(100),
  marca VARCHAR(100),
  ano INT,
  cor VARCHAR(50),
  preco DECIMAL(10,2),
  quilometragem DECIMAL(10,2),
  status VARCHAR(50)
);
```

---

## Como Executar

1. Clone o repositório ou abra o projeto no IntelliJ.
2. Execute o script SQL no MySQL Workbench.
3. Altere as credenciais do banco em `application.properties`.
4. Rode a aplicação com `SistemaAutomotivoApplication.java`.
5. Abra `index.html` no navegador.

---

Desenvolvido por Yuri de Oliveira Melo