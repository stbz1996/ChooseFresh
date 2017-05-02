
<%@page import="Model.Orden"%>
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
            List<Orden> ordenes = Tienda.consultarOrdenes();
            // carga las frutas
            int cont1 = 1; 
            int finalizar1 = 0;
            if (ordenes.size() > 0) {finalizar1 = ordenes.size();}
        %>
        <form action="../index.jsp">
            <input type="submit" value="Salir" id="boton3"/>
        </form><br><br><br><br>

        <div  id="mostrarordenes">
            <h1 style="color: white; text-align: center;">Ordenes</h1>
            <c:forEach var="i" begin="<%=cont1%>" end="<%=finalizar1%>">
                <form id="ordenprimaria">      
                    <h6 style="margin-bottom: 2%; margin-top: 0%; text-align: center; ">Orden número <%=ordenes.get(cont1-1).idOrden%></h6>
                    <input value="Tomar" type="submit" id="boton2" style="width: 10%; float: right; margin-right: 1.5%;"/>
                    <h6 style="margin: 0%;">Pedido:</h6>
                    <textarea readonly="readonly" style="width: 98%;" rows="4" cols="40" required="" minlength="10" >
                        <%=ordenes.get(cont1-1).pedido%> 
                    </textarea>
                    <h6 style="margin: 0%;">Dirección de entrega:</h6>
                    <textarea readonly="readonly" style="width: 98%;" rows="4" cols="40" required="" minlength="10" >
                        <%=ordenes.get(cont1-1).direccion%> 
                    </textarea>
                </form>
                <p style="display: none"><%=  cont1 += 1 %></p>
            </c:forEach>
        </div>
        
    </body>
</html>
