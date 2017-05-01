
<%@page import="Controllers.SessionActual"%>
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
            
            SessionActual admin = new SessionActual(user, pass);
            boolean resultado = admin.verificarAdministrador();
            
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
