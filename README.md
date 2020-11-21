# crudIt
 crud laravel com validação JWT, migrations, factories ,collective, api de saída e laravel mix.
 
 Instruções:
    Para poder ter acesso à API é necessário informar um email válido, para a utilização do token JWT.
    Pode-se cadastrar usuários e linkar tarefas ou povoar a tabela via factories.
    
Para povoar a tabela:

-> php artisan tinker

->User::factory(10)->create();
ou
->App\Models\User::factory()->count(10)->create();

->Todo::factory(50)->create();

depois exit.

Script já povoado se encontra na pasta:

https://github.com/renatoracunha/crudIt/blob/main/sql_scripts/crudit.sql

prints do systema:

Landing Page:
![alt text](https://github.com/renatoracunha/crudIt/blob/main/system_prints/home.png?raw=true)

Cadastro de usuário:
![alt text](https://github.com/renatoracunha/crudIt/blob/main/system_prints/cadastro.png?raw=true)

vinculação de tarefa:
![alt text](https://github.com/renatoracunha/crudIt/blob/main/system_prints/vinculo.png?raw=true)

Api de tarefas por usuário:
![alt text](https://github.com/renatoracunha/crudIt/blob/main/system_prints/api.png?raw=true)
