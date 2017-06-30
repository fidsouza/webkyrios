
    function loginInvalid() {
        swal({
            title: 'Verifique',
            text: 'Login/ou senha inválida',
            type: 'error'
        });
    }



function error() {
    swal({
        title: 'Ops..',
        text: 'Algo de errado aconteceu, contate o administrador',
        type: 'error'
    });
}

function loginCampos() {
    swal({
        title: 'Ops..',
        text: 'Os Campos em vermelho não podem ficar em branco',
        type: 'error'
    });
}

function cadastroMOk() {
    swal({
        title: 'Okay :)',
        text: 'Cadastrado com sucesso',
        type: 'success'
    });
}

function excluiMembro() {
    swal({
        title: 'Aviso :)',
        text: 'Excluido com sucesso',
        type: 'success'
    });
}





