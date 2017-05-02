<%-- 
    Document   : iniciarPedido
    Created on : 01/05/2017, 06:46:08 PM
    Author     : stbz1
--%>

<%@page import="Controllers.Tienda"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <body>
        <%
            // guaro los parametros
            String orden  = request.getParameter("ordenBD");
            String dir =    request.getParameter("direccion");
            boolean estado = Tienda.enviarOrden(dir, orden);
            if (estado) {
                session.setAttribute("msj", "Su orden ha sido enviada");
            }
            else{
                session.setAttribute("msj", "Su orden NO ha sido enviada");
            }
            response.sendRedirect("hacerPedido.jsp");
        %>
    </body>
</html>