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
        
        <form action="../administrador.jsp">
            <input type="submit" value="Menú" id="boton3"/>
        </form>
        <div  id="verProductosAdmin">
            <h1 style="color: white; text-align: center;">Listado de Productos</h1>
            <div>
                
                
            <% 
                Tienda.pedirtienda();
                List<ObjetoTienda> lista = Tienda.lista;                
                for(int i = 0; i < lista.size(); i++) { %>
                    <form id="objetoTienda" name="" action="Operaciones/AgregarAorden.jsp">
                        <h3 id="txtoProducto" ><%=lista.get(i).nombre%></h3>
                        <h4 id="txtoProducto"><%=lista.get(i).precio%> por <%=lista.get(i).unidad%></h4>
                        <img id="imgProducto" src="<%=lista.get(i).imagen%>"/><br><br>
                    </form> 
                <% } 
            %>
                
                
                
                
                
                
         
            </div>
        </div>
        
    </body>
</html>
