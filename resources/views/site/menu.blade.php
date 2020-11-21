<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Menu</title>
    <link rel="stylesheet" href="{{ asset('site/css/bootstrap.css') }}">
    <link rel="stylesheet" href="{{ asset('site/css/styles.css') }}">
</head>

<body>
    <div class="container">
        <div class="row">
            <div class="col-12 col-md-4">
                <div class="card" onclick="get_api()">
                    <center>
                        <h5>Visualizar API</h5>
                    </center>
                    <img src="{{ asset('images/api.svg') }}" class="menu-img">
                </div>
            </div>
            <div class="col-12 col-md-4">
                <a href="{{ route('register') }}">
                    <div class="card">
                        <center>
                            <h5>Cadastrar pessoa</h5>
                        </center>
                        <img src="{{ asset('images/user.svg') }}" class="menu-img">
                    </div>
                </a>
            </div>
            <div class="col-12 col-md-4">
                <a href="{{ route('link') }}">
                    <div class="card">
                        <center>
                            <h5>Vincular tarefa</h5>
                        </center>
                        <img src="{{ asset('images/task.svg') }}" class="menu-img">
                    </div>
                </a>
            </div>
        </div>
        <div class="row">
            <div class="col-12">
                <br>
                <center>
                    @php
                    echo Form::label('email', 'Email de validação para acessar a API:', ['class' => 'form-control']);
                    echo Form::text('email', '', ['class' => 'form-control', 'placeholder' => 'algo@algo.com']);
                    @endphp
                </center>
            </div>
        </div>
    </div>

    <script src="{{ asset('site/js/jquery.js') }}"></script>
    <script src="{{ asset('site/js/bootstrap.js') }}"></script>
    <script src="{{ asset('site/js/script.js') }}"></script>
</body>

</html>
