<%@page import="java.util.ArrayList"%>
<%@page import="Controllers.productoOrden"%>
<%@page import="java.util.List"%>
<%@page import="Controllers.Tienda"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script type="text/javascript" src="control.js"></script>
        <link rel="stylesheet" type="text/css" href="../CSS/estilos.css">
        <script src="JS/jquery.js" type="text/javascript"></script> 
        <script type="text/javascript" src="JS/control.js"></script>
        <title>JSP Page</title>
    </head>
    <body>
        <%
            //Tienda.orden;
            // Nombre - precio - cantidad - total: xxx 
            
            String orden = "";
            int total = 0;
            for (productoOrden item : Tienda.orden) {
                orden += item.cantidad + "" + item.unidad + "  de  " + item.nombre + " ..... ";
                total += item.cantidad * item.precio;
            }
            

            // aqui creo el string para la base
            
        %>
        
        
        <div class="login">
            <h1>Has tú pedido</h1>
            
            <p id="mostrarOrden">
                <%=orden%>
            </p>
            <p id="mostrarOrden">
                Total de la compra: <%=total%> Colones.
            </p>
            
            <p id="mostrarOrden" >
            <textarea style="width: 100%;" name="direccion" rows="10" cols="40"></textarea>
            </p>
        </div>
        
    </body>
</html>
