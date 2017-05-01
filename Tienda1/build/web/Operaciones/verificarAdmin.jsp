
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script type="text/javascript" src="control.js"></script>
        <link rel="stylesheet" type="text/css" href="../CSS/estilos.css">
        <script src="JS/jquery.js" type="text/javascript"></script> 
        <script type="text/javascript" src="JS/control.js"></script>
        <title>Admin</title>
    </head>
    <body>
        <div class="login">
            <h1>Login Admin</h1>
            <div class="part1">
                <form method="POST" action="ValidarAdmin.jsp">
                    <p>Username Admin</p> 
                    <input class="campoTexto" type="text" maxlength="20" minlength="4" name="user"/>
                    <br><br>
                    <p>Contraseña Admin</p> 
                    <input class="campoTexto" type="password" maxlength="10" minlength="4" name="pass"/>
                    <br><br><input class="boton1" type="submit" value="Iniciar"/>
                </form>
            </div>
            <div class="part2">
                <img class="img1" src="https://t1.ea.ltmcdn.com/es/images/8/1/8/img_los_5_pajaros_que_mejor_cantan_20818_paso_3_600.jpg"/>
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
