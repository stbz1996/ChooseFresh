
<%@page import="Controllers.Administrador"%>
<%@page import="Controllers.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

    <body>
        
        <% 
            // tomo valores del formulario
            String nombre = request.getParameter("nombre");
            String apellido  = request.getParameter("apellido");
            String username = request.getParameter("username");
            String mail = request.getParameter("mail");
            String pass1 = request.getParameter("pass1");
            
            if (nombre.equals("") || apellido.equals("") || username.equals("") || mail.equals("") || pass1.equals("")) {
                session.setAttribute("msj", "Debe ingresar los datos completos");
            }            
            else{
                Boolean resultado = Administrador.VerificarAdmin(nombre, apellido, username, mail, pass1);
                if (resultado == true) {
                    session.setAttribute("msj", "Se ha creado el administrador");
                }
                else{
                    session.setAttribute("msj", "NO se ha logrado crear el administrador");
                }  
            }
            response.sendRedirect("agregarAdmin.jsp");
        %>
    </body>
</html>
