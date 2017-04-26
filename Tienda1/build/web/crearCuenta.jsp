
<%@page import="Controllers.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script type="text/javascript" src="control.js"></script>
        <link rel="stylesheet" type="text/css" href="CSS/estilos.css">
        <title>JSP Page</title>
    </head>
    
    <body>
        <div class="login">
            <h1>Crear Cuenta</h1>
            <div class="part1">
                <form method="POST" action="Operaciones/crearUsuario.jsp">
                    <p>Nombre</p> 
                    <input class="campoTexto" type="text" maxlength="20" minlength="4" name="nombre"/> 
                    <br><br>
                    <p>Apellido</p>
                    <input class="campoTexto" type="text" maxlength="20" minlength="4" name="apellido"/>
                    <br><br>
                    <p>Usuario</p>
                    <input class="campoTexto" type="text" maxlength="20" minlength="4" name="username"/>
                    <br><br>
                    <p>Correo</p>
                    <input class="campoTexto" type="email" name="mail"/>
                    <br><br>
                    <p>Contraseña </p>
                    <input class="campoTexto" type="password" maxlength="10" minlength="4" name="pass1"/>
                    <br><br>
                    <input class="boton1" type="submit" value="Crear"/>
                </form>
                <form action="index.jsp">
                    <input class="boton1" type="submit" value="Inicio"/>
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
            <p id="msjOculto2"><%=msj%></p>
        </div>
    </body>
</html>
