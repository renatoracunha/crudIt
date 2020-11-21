<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Cadastrar Usuário</title>
    <link rel="stylesheet" href="{{ asset('site/css/bootstrap.css') }}">
    <link rel="stylesheet" href="{{ asset('site/css/styles.css') }}">

</head>

<body>
    <div class="container">
        <div class="row">
            <div class="col-12">
                <center>
                    <h1>Cadastrar Tarefas</h1>
                </center>
            </div>
        </div>
        {!! Form::open(['url' => 'insert-task', 'class' => 'form-crud', 'method' => 'post']) !!}
        <div class="row">
            <div class="col-12 col-md-6">
                @php
                echo Form::label('name', 'Tarefa:', ['class' => 'form-control crud-labels']);
                echo Form::text('name', '', ['class' => 'form-control crud-inputs', 'placeholder' => '...']);
                @endphp
            </div>
            <div class="col-12 col-md-6">
                @php
                echo Form::label('user_id', 'Pessoa:', ['class' => 'form-control crud-labels']);
                echo Form::select('user_id', $user_data,
                null, ['class' => 'form-control crud-inputs','placeholder' => 'Selecione...']);
                @endphp
            </div>
            <div class="col-12">
                @php
                echo Form::label('description', 'Descrição da tarefa:', ['class' => 'form-control crud-labels']);
                echo Form::textarea('description', '', ['class' => 'form-control crud-inputs', 'placeholder' => 'Descreva aqui a tarefa...']);
                @endphp
            </div>
            <div class="col-12">
                @php
                echo Form::submit('Vincular!', ['class' => 'form-control crud-submit']);
                @endphp
            </div>
        </div>
        {!! Form::close() !!}
    </div>

    <script src="{{ asset('site/js/jquery.js') }}"></script>
    <script src="{{ asset('site/js/bootstrap.js') }}"></script>
</body>

</html>
