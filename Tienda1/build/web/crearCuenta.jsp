
<%@page import="Controllers.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script type="text/javascript" src="control.js"></script>
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Crear Cuenta</h1>
        <form method="POST" action="Operaciones/crearUsuario.jsp">
            <p>Nombre <input type="text" maxlength="20" minlength="4" name="nombre"/></p> 
            <p>Apellido <input type="text" maxlength="20" minlength="4" name="apellido"/></p> 
            <p>Username <input type="text" maxlength="20" minlength="4" name="username"/></p> 
            <p>Email <input type="email" name="mail"/></p> 
            <p>Contraseña <input type="password" maxlength="10" minlength="4" name="pass1"/></p> 
            
            <br>
            <input type="submit" value="Crear"/>
        </form>
        
        <br>
        
        <form action="index.jsp">
            <input type="submit" value="Inicio"/>
        </form>
        
        <%
        String msj = (String)session.getAttribute("msj");
        session.setAttribute("msj", "");
        if (msj == null) {msj = "";}
        %>
        <p><%=msj%></p>
    </body>
</html>
