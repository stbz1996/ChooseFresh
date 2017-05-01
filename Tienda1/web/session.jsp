<%@page import="Controllers.SessionActual"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <body>
        <% 
            //////////////////////////////////////////////////////////////
            /// Hace las verificaciones del usuario que desea ingresar ///
            //////////////////////////////////////////////////////////////
            String user = request.getParameter("user");
            String pass  = request.getParameter("pass");
            
            if (user.equals("admin") && pass.equals("admin")){
                response.sendRedirect("administrador.jsp"); 
            }
            else{

                if (user.equals("") || pass.equals("")) {
                    session.setAttribute("msj", "Digite los datos correctamente");
                    response.sendRedirect("index.jsp");}
                // crea el usuario y verifica si existe en la base 
                SessionActual actual = new SessionActual(user, pass);
                Boolean resultado = actual.verificarUsuario();
                SessionActual usuarioActual;

                if (resultado == true) {
                    session.setAttribute("usuarioActual", actual);
                    response.sendRedirect("inicio.jsp");
                }
                else{
                    session.setAttribute("msj", "Usuario NO registrado");
                    response.sendRedirect("index.jsp");
                    usuarioActual = new SessionActual("", "");}   
            }
        %>
    </body>
</html>
