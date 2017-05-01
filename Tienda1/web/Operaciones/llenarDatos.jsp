<%-- 
    Document   : llenarDatos
    Created on : 01/05/2017, 02:33:09 PM
    Author     : stbz1
--%>

<%@page import="Controllers.Tienda"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <body>
        <%
            // carga x objtos en la tienda
            Tienda.llenarTienda();
 
            response.sendRedirect("../inicio.jsp");
        %>
    </body>
</html>
