function get_api(url) {
    let email = $('#email').val();
    if (email == '') {
        $('#email').addClass('is-invalid');
        $('#email').focus();
        $('#email').attr('placeholder', 'Informe um email válido para acessar a API');
        $('#email').css("background-color", "#FFD6D6");
        return;
    }

    $.ajax({
        url: './api/auth/login',
        dataType: "json",
        type: "post",
        data: { email: email, password: 'password' },
        cache: false,
        success: function(data) {
            if (data) {
                window.location.href = './api/auth/users-tasks?token=' + data.original.token;
            } else {
                alert('email inválido');
            }
        },
        error: function(e) {
            alert('erro');
        }
    })
}