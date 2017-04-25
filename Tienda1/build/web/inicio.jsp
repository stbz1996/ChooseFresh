<%@page import="Controllers.SessionActual"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script type="text/javascript" src="control.js"></script>
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Tienda</h1>
        <!-- asi paso variables de pagina a pagina -->
        <% 
            // tomo valores del formulario
            String user = request.getParameter("user");
            String pass  = request.getParameter("user");
            if (user.equals("") || pass.equals("")) {
                session.setAttribute("msj", "Digite los datos correctamente");
                response.sendRedirect("index.jsp");
            }
            // crea el usurio y verifica si existe en la base 
            SessionActual actual = new SessionActual(user, pass);
            String resultado = actual.verificarUsuario();
            SessionActual usuarioActual;
            if (resultado == "true") {
                session.setAttribute("usuarioActual", actual);
                usuarioActual = (SessionActual)session.getAttribute("usuarioActual");
            }
            else{
                session.setAttribute("msj", "Usuario NO registrado");
                response.sendRedirect("index.jsp");
                usuarioActual = new SessionActual("", "");
            }   
        %>
        
        
        
        <p>Bienvenido <%=usuarioActual.user%> </p>

        
        
    </body>
</html>

