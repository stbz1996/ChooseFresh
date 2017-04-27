





$(document).ready(function(){
   $("#crearCuenta").css("display", "none");
});

function mostrarCrearCuenta()
{
    $("#crearCuenta").css("display", "block");
    $("#login").css("display", "none");
}

function mostrarInicioLogin()
{
    $("#crearCuenta").css("display", "none");
    $("#login").css("display", "block");
}