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
                    <h1>Cadastrar Pessoa</h1>
                </center>
            </div>
        </div>
        {!! Form::open(['url' => 'api/auth/register', 'class' => 'form-crud','method' => 'post']) !!}
        <input type="hidden" name="password" value="password">
        <input type="hidden" name="password_confirmation" value="password">
        {{-- <input type="hidden" name="password" value="password"> --}}
        <div class="row">
            <div class="col-12 col-md-6">
                @php
                echo Form::label('name', 'Nome:', ['class' => 'form-control crud-labels']);
                echo Form::text('name', '', ['class' => 'form-control crud-inputs', 'placeholder' => '...']);
                @endphp
            </div>
            <div class="col-12 col-md-6">
                @php
                echo Form::label('email', 'Email:', ['class' => 'form-control crud-labels']);
                echo Form::text('email', '', ['class' => 'form-control crud-inputs', 'placeholder' => 'algo@algo.com']);
                @endphp
            </div>
            <div class="col-12 col-md-6">
                @php
                echo Form::label('gender', 'Sexo:', ['class' => 'form-control crud-labels']);
                echo Form::select('gender', ['M' => 'Masculino', 'F' => 'Feminino', 'N' => 'Prefiro não informar'],
                null, ['class' => 'form-control crud-inputs','placeholder' => 'Selecione...']);
                @endphp
            </div>
            <div class="col-12 col-md-6">

                @php
                echo Form::label('uf', 'Estado:', ['class' => 'form-control crud-labels']);
                echo Form::select('uf', $states_data,
                null, ['class' => 'form-control crud-inputs','placeholder' => 'Selecione...']);
                @endphp
            </div>
            <div class="col-12">
                @php
                echo Form::submit('Cadastrar!', ['class' => 'form-control crud-submit']);
                @endphp
            </div>
        </div>
        {!! Form::close() !!}
    </div>

    <script src="{{ asset('site/js/jquery.js') }}"></script>
    <script src="{{ asset('site/js/bootstrap.js') }}"></script>
</body>

</html>
