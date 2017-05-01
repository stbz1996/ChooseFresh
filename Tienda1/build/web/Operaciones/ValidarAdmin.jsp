<%-- 
    Document   : ValidarAdmin
    Created on : 01/05/2017, 12:37:00 AM
    Author     : stbz1
--%>

<%@page import="Controllers.Administrador"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <body>
        <%
            String user = request.getParameter("user");
            String pass  = request.getParameter("pass");
            if (user.equals("") || pass.equals("")) {
                session.setAttribute("msj", "Digite los datos correctamente");
                response.sendRedirect("verificarAdmin.jsp");
            }
            
            Administrador admin = new Administrador(user, pass);
            boolean resultado = admin.VerificarAdmin();
            if (resultado == true) {
                    session.setAttribute("administrador", admin);
                    response.sendRedirect("../administrador.jsp");
            }
            else{
                    session.setAttribute("msj", "Administrador NO registrado");
                    response.sendRedirect("verificarAdmin.jsp");
            }  
        %>
    </body>
</html>
