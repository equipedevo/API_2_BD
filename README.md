# Dicionário de Dados

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

</details>


<details>
<summary>Chamado</summary>

</details>


<details>
<summary>Status</summary>

</details>


<details>
<summary>Tipo_Servico</summary>

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