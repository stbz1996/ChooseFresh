<%-- 
    Document   : agregarProducto
    Created on : 01/05/2017, 11:51:04 AM
    Author     : stbz1
--%>

<%@page import="Controllers.Tienda"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <body>
        <h1>agregar producto</h1>
        <%
            String nombre = request.getParameter("nombre");
            String precio = request.getParameter("precio");
            String unidad = request.getParameter("unidad");
            String categoria = request.getParameter("categoria");
            String imagen = request.getParameter("imagen");
            
            boolean estado = Tienda.agregarProducto(nombre, precio, unidad, categoria, imagen);
            
            if (estado) {
                session.setAttribute("msj", "El producto ha sido creado");
            }
            else{
                session.setAttribute("msj", "No se logró insertar el producto");
            }
            response.sendRedirect("modeloProducto.jsp");
               
            
        %>
        
    </body>
</html>
