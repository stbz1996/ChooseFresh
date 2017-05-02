
<%@page import="Controllers.Tienda"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <body>
        <%
            Tienda.llenarTienda();
            response.sendRedirect("../inicio.jsp");
        %>
    </body>
</html>
