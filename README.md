# Dicionário de Dados

## Explicação dos campos das tabelas feitas até o momento do banco de dados do site Hermez.

<details>
<summary>Empresa</summary>

| Nome Dos Campos | Tipo de dados | Comprimento | Restrições   | Valor padrão   | Descrição                           |
|:---------------:|:-------------:|:-----------:|:------------:|:--------------:|:-----------------------------------:|
| emp_cod         | INT           | Default     | PK, NOT NULL | auto_increment | Número de identificação da empresa  |
| emp_nome        | VARCHAR       | 30          | NOT NULL     | N/A            | Razão Social da empresa             |
| emp_cnpj        | VARCHAR       | 30          | NOT NULL     | N/A            | CNPJ da empresa                     |
| emp_senha       | BINARY        | 60          | NOT NULL     | N/A            | Senha da empresa                    |
| emp_email       | VARCHAR       | 50          | NOT NULL     | N/A            | Email da empresa                    |

</details>


<details>
<summary>Funcionario</summary>

| Nome Dos Campos | Tipo de dados | Comprimento | Restrições   | Valor padrão   | Descrição                               |
|:---------------:|:-------------:|:-----------:|:------------:|:--------------:|:---------------------------------------:|
| fun_cod         | INT           | Default     | PK, NOT NULL | auto_increment | Número de identificação do funcionário  |
| fun_nome        | VARCHAR       | 30          | NOT NULL     | N/A            | Nome do funcionário                     |
| fun_funcao      | VARCHAR       | 20          | NOT NULL     | N/A            | Função do funcionário na empresa        |
| fun_email       | VARCHAR       | 30          | NOT NULL     | N/A            | Email do funcionário                    |
| fun_celular     | VARCHAR       | 15          | NOT NULL     | N/A            | Celular do funcionário                  |
| fun_senha       | BINARY        | 60          | NOT NULL     | N/A            | Senha do funcionário                    |
| emp_cod         | INT           | Default     | FK, NOT NULL | N/A            | Código da empresa                       |
| car_cod         | INT           | Default     | FK, NOT NULL | N/A            | Código do cargo                         |
| fun_dataNasc    | DATE          | Default     | NOT NULL     | N/A            | Data de nascimento do funcionário       |

</details>


<details>
<summary>Cargo</summary>

| Nome Dos Campos | Tipo de dados | Comprimento | Restrições   | Valor padrão   | Descrição                               |
|:---------------:|:-------------:|:-----------:|:------------:|:--------------:|:---------------------------------------:|
| car_cod         | INT           | Default     | PK, NOT NULL | auto_increment | Número de identificação do cargo        |
| car_desc        | VARCHAR       | 30          | NOT NULL     | N/A            | Nome do cargo do site (Adminitrstador, Tecnico e Padrão)|

</details>


<details>
<summary>Chamado</summary>

| Nome Dos Campos | Tipo de dados | Comprimento | Restrições   | Valor padrão   | Descrição                                 |
|:---------------:|:-------------:|:-----------:|:------------:|:--------------:|:-----------------------------------------:|
| cha_cod         | INT           | Default     | PK, NOT NULL | auto_increment | Número de identificação do chamado        |
| cha_desc        | VARCHAR       | 690         | NOT NULL     | N/A            | Descrição do chamado                      |
| cha_dataInicio  | DATETIME      | Default     | NOT NULL     | N/A            | Data e horário que o chamado foi aberto   |
| cha_dataFim     | DATETIME      | Default     |              | N/A            | Data e horário que o chamado foi fechado  |
| cha_local       | VARCHAR       | 32          |              | N/A            | Local do problema do chamado              |
| cha_titulo      | VARCHAR       | 30          | NOT NULL     | N/A            | Titulo do chamado                         |
| fun_cod         | INT           | Default     | FK, NOT NULL | N/A            | Código do funcionario que abriu o chamado |
| sta_cod         | INT           | Default     | FK, 1<=x<=6  | 1              | Código do status do chamado               |
| tec_cod         | INT           | Default     | FK, NOT NULL | N/A            | Código do técnico responsável pelo chamado|
| cha_prioridade  | INT           | Default     | 1 <= X <= 4  | 2              | Número da prioridade do chamado           |
| ser_cod         | INT           | Default     | FK, NOT NULL | N/A            | Código do tipo de serviço do chamado      |
| emp_cod         | INT           | Default     | FK, NOT NULL | N/A            | Código da empresa responsável pelo chamado|
| ct_cod          | INT           | Default     | FK, NOT NULL | N/A            | Código do chat relacionado ao chamado     |
| arq_cod         | INT           | Default     | FK           | N/A            | Código da imagem anexada no chamado       |

</details>


<details>
<summary>Status</summary>

| Nome Dos Campos | Tipo de dados | Comprimento | Restrições   | Valor padrão   | Descrição                                 |
|:---------------:|:-------------:|:-----------:|:------------:|:--------------:|:-----------------------------------------:|
| sta_cod         | INT           | Default     | PK, NOT NULL | auto_increment | Número de identificação do status         |
| sta_nome        | VARCHAR       | 20          | NOT NULL     | N/A            | Nome do status que um chamado pode estar  |
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


<details>
<summary>Arquivo</summary>

| Nome Dos Campos | Tipo de dados | Comprimento | Restrições   | Valor padrão   | Descrição                               |
|:---------------:|:-------------:|:-----------:|:------------:|:--------------:|:---------------------------------------:|
| arq_cod         | INT           | Default     | PK, NOT NULL | auto_increment | Número de identificação do arquivo      |
| arq_caminho     | VARCHAR       | 200         | NOT NULL     | N/A            | Link de onde a imagem está armazenada   |

</details>


<details>
<summary>Chat</summary>

| Nome Dos Campos | Tipo de dados | Comprimento | Restrições   | Valor padrão   | Descrição                               |
|:---------------:|:-------------:|:-----------:|:------------:|:--------------:|:---------------------------------------:|
| ct_cod          | INT           | Default     | PK, NOT NULL | auto_increment | Número de identificação do chat         |
| ct_status       | tinyint       | 1           |              | 1              | Status se o chat está aberto (1) ou fechado(0)|

</details>


<details>
<summary>Mensagem</summary>

| Nome Dos Campos | Tipo de dados | Comprimento | Restrições   | Valor padrão   | Descrição                                 |
|:---------------:|:-------------:|:-----------:|:------------:|:--------------:|:-----------------------------------------:|
| msg_cod         | INT           | Default     | PK, NOT NULL | auto_increment | Número de identificação da mensagem       |
| msg_texto       | VARCHAR       | 500         | NOT NULL     | N/A            | Texto contido na mensagem                 |
| fun_cod         | INT           | Default     | FK, NOT NULL | N/A            | Código do funcionario que enviou a mensagem|
| ct_cod          | INT           | Default     | FK, NOT NULL | N/A            | Código do chat que a mensgem foi enviada  |
| arq_cod         | INT           | Default     | FK           | N/A            | Código da imagem anexada na mensagem      |
| msg_dataEnv     | DATETIME      | Default     | NOT NULL     | N/A            | Data e horário que a mensagem foi enviada |

</details>


<details>
<summary>Perguntas</summary>

| Nome Dos Campos | Tipo de dados | Comprimento | Restrições   | Valor padrão   | Descrição                                 |
|:---------------:|:-------------:|:-----------:|:------------:|:--------------:|:-----------------------------------------:|
| per_cod         | INT           | Default     | PK, NOT NULL | auto_increment | Número de identificação da pergunta       |
| per_desc        | VARCHAR       | 120         | NOT NULL     | N/A            | Pergunta                                  |
| per_resposta    | VARCHAR       | 160         | NOT NULL     | N/A            | Resposta para respectiva pergunta         |
| emp_cod         | INT           | Default     | FK, NOT NULL | N/A            | Código da empresa responsável pela pergunta|

</details>