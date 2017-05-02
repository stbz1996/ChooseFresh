<%-- 
    Document   : verProductosAdmin
    Created on : 01/05/2017, 10:11:03 PM
    Author     : stbz1
--%>

<%@page import="java.util.List"%>
<%@page import="Controllers.ObjetoTienda"%>
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
            Tienda.pedirtienda();
            List<ObjetoTienda> lista = Tienda.lista;
            // carga los productos
            int cont1 = 1; 
            int finalizar1 = 0;
            if (Tienda.lista.size() > 0) {finalizar1 = Tienda.lista.size();}
            
        %>
        <form action="../administrador.jsp">
            <input type="submit" value="Menú" id="boton3"/>
        </form>
        <div  id="verProductosAdmin">
            <h1 style="color: white; text-align: center;">Listado de Productos</h1>
            <div>
                    <c:forEach var="i" begin="<%=cont1%>" end="<%=finalizar1%>">
                        <form id="objetoTienda" name="" action="Operaciones/AgregarAorden.jsp">
                            <h3 id="txtoProducto" ><%=lista.get(cont1-1).nombre%></h3>
                            <h4 id="txtoProducto"><%=lista.get(cont1-1).precio%> por <%=lista.get(cont1-1).unidad%></h4>
                            <img id="imgProducto" src="<%=lista.get(cont1-1).imagen%>"/><br><br>
                        </form> 
                        <p style="display: none"><%=  cont1 += 1 %></p>
                    </c:forEach>
            </div>
        </div>
        
    </body>
</html>
