<%@page import="Controllers.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

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
                Usuario actual = new Usuario(nombre, apellido, username, mail, pass1);
                Boolean resultado = actual.crearUsuario();
                if (resultado == true) {
                    session.setAttribute("msj", "Se ha creado el usuario");
                    session.setAttribute("usuario", actual);
                }
                else{
                    session.setAttribute("msj", "NO se ha logrado crear usuario");
                }  
            }
            response.sendRedirect("../crearCuenta.jsp");
        %>

