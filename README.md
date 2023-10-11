# Dicionário de Dados

## Explicação dos campos das tabelas feitas até o momento do banco de dados do site Hermez.

<details>
<summary>Empresa</summary>

| Nome Dos Campos | Tipo de dados | Comprimento | Restrições   | Valor padrão   | Descrição                           |
|:---------------:|:-------------:|:-----------:|:------------:|:--------------:|:-----------------------------------:|
| emp_cod         | INT           | Default     | PK, NOT NULL | auto_increment | Número de identificação da empresa  |
| emp_nome        | VARCHAR       | 20          | NOT NULL     | N/A            | Razão Social da empresa             |
| emp_cnpj        | VARCHAR       | 30          | NOT NULL     | N/A            | CNPJ da empresa                     |
| emp_senha       | BINARY        | 72          | NOT NULL     | N/A            | Senha da empresa                    |
| emp_email       | VARCHAR       | 48          | NOT NULL     | N/A            | Email da empresa                    |

</details>


<details>
<summary>Funcionario</summary>

| Nome Dos Campos | Tipo de dados | Comprimento | Restrições   | Valor padrão   | Descrição                               |
|:---------------:|:-------------:|:-----------:|:------------:|:--------------:|:---------------------------------------:|
| fun_cod         | INT           | Default     | PK, NOT NULL | auto_increment | Número de identificação do funcionário  |
| fun_nome        | VARCHAR       | 30          | NOT NULL     | N/A            | Nome do funcionário                     |
| fun_funcao      | VARCHAR       | 15          | NOT NULL     | N/A            | Função do funcionário na empresa        |
| fun_email       | VARCHAR       | 30          | NOT NULL     | N/A            | Email do funcionário                    |
| fun_celular     | VARCHAR       | 12          | NOT NULL     | N/A            | Celular do funcionário                  |
| fun_senha       | BINARY        | 72          | NOT NULL     | N/A            | Senha do funcionário                    |
| emp_cod         | INT           | Default     | FK, NOT NULL | N/A            | Código da empresa                       |
| car_cod         | INT           | Default     | FK, NOT NULL | N/A            | Código do cargo                         |
| fun_dataNasc    | DATE          | Default     | NOT NULL     | N/A            | Data de nascimento do funcionário       |

</details>


<details>
<summary>Cargo</summary>

| Nome Dos Campos | Tipo de dados | Comprimento | Restrições   | Valor padrão   | Descrição                               |
|:---------------:|:-------------:|:-----------:|:------------:|:--------------:|:---------------------------------------:|
| car_cod         | INT           | Default     | PK, NOT NULL | auto_increment | Número de identificação do cargo        |
| car_desc        | VARCHAR       | 23          | NOT NULL     | N/A            | Nome do cargo do site (Adminitrstador, Tecnico e Padrão)|

</details>


<details>
<summary>Chamado</summary>

| Nome Dos Campos | Tipo de dados | Comprimento | Restrições   | Valor padrão   | Descrição                                 |
|:---------------:|:-------------:|:-----------:|:------------:|:--------------:|:-----------------------------------------:|
| cha_cod         | INT           | Default     | PK, NOT NULL | auto_increment | Número de identificação do chamado        |
| cha_desc        | VARCHAR       | 690         | NOT NULL     | N/A            | Descrição do chamado                      |
| cha_dataInicio  | DATE          | Default     | NOT NULL     | N/A            | Data que o chamado foi aberto             |
| cha_dataFim     | DATE          | Default     | NOT NULL     | N/A            | Data que o chamado foi fechado            |
| cha_local       | VARCHAR       | 20          |              | N/A            | Local do problema do chamado              |
| cha_titulo      | VARCHAR       | 72          | NOT NULL     | N/A            | Titulo do chamado                         |
| fun_cod         | INT           | Default     | FK, NOT NULL | N/A            | Código do funcionario que abriu o chamado |
| sta_cod         | INT           | Default     | FK, 0<=x<=6  | 0              | Código do status do chamado               |
| tec_cod         | INT           | Default     | FK, NOT NULL | N/A            | Código do técnico responsável pelo chamado|
| cha_prioridade  | INT           | Default     | 1 <= X <= 4  | N/A            | Número da prioridade do chamado           |
| ser_cod         | INT           | Default     | FK, NOT NULL | N/A            | Código do tipo de serviço do chamado      |

</details>


<details>
<summary>Status</summary>

| Nome Dos Campos | Tipo de dados | Comprimento | Restrições   | Valor padrão   | Descrição                                 |
|:---------------:|:-------------:|:-----------:|:------------:|:--------------:|:-----------------------------------------:|
| sta_cod         | INT           | Default     | PK, NOT NULL | auto_increment | Número de identificação do status         |
| sta_nome        | VARCHAR       | 15          | NOT NULL     | N/A            | Nome do status que um chamado pode estar  |
| sta_valor       | INT           | Default     | 1 <= x <= 6  | 0              | Valor do status em número                 |

</details>


<details>
<summary>Tipo_Servico</summary>

| Nome Dos Campos | Tipo de dados | Comprimento | Restrições   | Valor padrão   | Descrição                                            |
|:---------------:|:-------------:|:-----------:|:------------:|:--------------:|:----------------------------------------------------:|
| ser_cod         | INT           | Default     | PK, NOT NULL | auto_increment | Número de identificação do tipo de serviço           |
| ser_nome        | VARCHAR       | 31          | NOT NULL     | N/A            | Nome do tipo de serviço que um chamado pode ter      |
| ser_prioridade  | INT           | Default     | 1 <= x <= 4  | 2              | Número da prioridade do tipo de serviço              |

</details>

<!-- <details>

</details>

<details>

</details>

<details>

</details>

<details>

</details>

<details>

</details> -->