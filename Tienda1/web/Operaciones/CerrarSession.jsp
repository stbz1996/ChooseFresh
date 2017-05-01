<%-- 
    Document   : CerrarSession
    Created on : 30/04/2017, 11:05:55 PM
    Author     : stbz1
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <body>
        <%
            session.removeAttribute("usuarioActual");
            response.sendRedirect("../index.jsp");
        %>
    </body>
</html>