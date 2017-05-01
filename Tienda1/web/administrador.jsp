
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script type="text/javascript" src="control.js"></script>
        <link rel="stylesheet" type="text/css" href="CSS/estilos.css">
        <script src="JS/jquery.js" type="text/javascript"></script> 
        <script type="text/javascript" src="JS/control.js"></script>
        <title>Administrador</title>
    </head>
    <body>
        <%
        
        %>
        
        <div class="login" id="modoAdmin">
            <h1>Modo Administrador</h1>
            
            <form method="POST" action="Operaciones/agregarProductos.jsp">
                <input id="boton3" value="Crear Producto" type="submit"/>
            </form>
            
            <input id="boton3" value="Agregar Administradores" type="submit"/>
            <input id="boton3" value="Ver usuario" type="submit"/>
            <input id="boton3" value="Ver productos" type="submit"/>
        </div>
        
        
        
        
    </body>
</html>
