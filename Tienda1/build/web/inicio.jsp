<%@page import="java.util.List"%>
<%@page import="Controllers.ObjetoTienda"%>
<%@page import="Controllers.Tienda"%>
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
        
        
        <% 
            /////////////////////////////////////////////////////////////
            /// Hace las verificaciones del usuario qu desea ingresar ///
            /////////////////////////////////////////////////////////////
            String user = request.getParameter("user");
            String pass  = request.getParameter("pass");
            if (user.equals("") || pass.equals("")) {
                session.setAttribute("msj", "Digite los datos correctamente");
                response.sendRedirect("index.jsp");}
            // crea el usurio y verifica si existe en la base 
            SessionActual actual = new SessionActual(user, pass);
            String resultado = actual.verificarUsuario();
            SessionActual usuarioActual;
            if (resultado == "true") {
                session.setAttribute("usuarioActual", actual);
                usuarioActual = (SessionActual)session.getAttribute("usuarioActual");}
            else{
                session.setAttribute("msj", "Usuario NO registrado");
                response.sendRedirect("index.jsp");
                usuarioActual = new SessionActual("", "");}   
            
        %>
 

        <%
            ///////////////////////////////////////
            /// Carga la tienda en una variable ///
            ///////////////////////////////////////
            List<ObjetoTienda> lista = Tienda.mostrarTienda();
            int cont = 0;
        %>

        
        <c:forEach var="i" begin="<%=cont%>" end="<%=lista.size()-1%>">

            <!-- Por cada elemento debo hacer un form -->
            <p> <%=lista.get(cont).nombre%> </p>
            
            

            <!-- este es el contador del bloque -->
            <p style="display: none"><%=  cont += 1 %></p>
        </c:forEach>
        
    </body>
</html>

