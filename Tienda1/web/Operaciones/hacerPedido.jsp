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
            <form method="post" action="iniciarPedido.jsp">
                <P style="margin-left: 24%;">¿A que dirección será enviado el pedido?</p>
                <p id="mostrarOrden" >
                    <textarea name="direccion" style="width: 98%;" rows="10" cols="40"></textarea>
                </p>
                <input type="text" value="<%=orden%>" style="display: none" name="ordenBD" required=""> 
                <input id="boton3" type="submit" value="Pedir"/>
            </form><br><br><br>
            <%
                String msj = (String)session.getAttribute("msj");
                session.setAttribute("msj", "");
                if (msj == null) {msj = "";}
            %>
            <p style="text-align: center"> <%=msj%> </p>
        </div>
        
    </body>
</html>
