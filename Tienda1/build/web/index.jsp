<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script type="text/javascript" src="control.js"></script>
        <link rel="stylesheet" type="text/css" href="CSS/estilos.css">
        <script src="JS/jquery.js" type="text/javascript"></script> 
        <script type="text/javascript" src="JS/control.js"></script>
        <title>Login</title>
    </head>
    <body>
        <div class="login">
            <h1>Login</h1>
            <div class="part1">
                <form method="POST" action="session.jsp">
                    <p>Username</p> 
                    <input class="campoTexto" type="text" maxlength="20" minlength="4" name="user" required=""/>
                    <br><br>
                    <p>Contraseña</p> 
                    <input class="campoTexto" type="password" maxlength="10" minlength="4" name="pass" required=""/>
                    <br><br><input class="boton1" type="submit" value="Iniciar"/>
                </form>
                <form action="crearCuenta.jsp">
                    <input <input class="boton1" type="submit" value="Crear Cuenta"/>
                </form>
            </div>
            <div class="part2">
                <img class="img1" src="https://lh3.googleusercontent.com/-yDIBtt0GtGM/WQf_VXa5BeI/AAAAAAAAAfc/H2uEu6JE718lBFiV5rWnsEa8P3Jo-Q9BwCL0B/w329-d-h218-p-rw/logoInvestigacion.png"/>
            </div>
            <%
                String msj = (String)session.getAttribute("msj");
                session.setAttribute("msj", "");
                if (msj == null) {msj = "";}
            %>
            <p id="msjOculto"><%=msj%> </p>
        </div>
    </body>
</html>
