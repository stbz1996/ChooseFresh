<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script type="text/javascript" src="control.js"></script>
        <title>Login</title>
    </head>
    <body>
        <h1>Login</h1>
        <form method="POST" action="inicio.jsp">
            <p>Username</p> 
            <input type="text" maxlength="20" minlength="4" name="user"/>
            <p>Contraseña</p> 
            <input type="password" maxlength="10" minlength="4" name="pass"/>
            <p></p>
            <input type="submit" value="Iniciar"/>
        </form>
        <br>
        <form action="crearCuenta.jsp">
            <input type="submit" value="Crear Cuenta"/>
        </form>
        
        <%
            String msj = (String)session.getAttribute("msj");
            session.setAttribute("msj", "");
            if (msj == null) {msj = "";}
        %>
        <p><%=msj%> </p>
        
    </body>
</html>
