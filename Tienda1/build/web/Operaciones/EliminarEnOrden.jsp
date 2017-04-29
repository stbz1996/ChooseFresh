<%-- 
    Document   : EliminarEnOrden
    Created on : 28/04/2017, 09:25:55 PM
    Author     : stbz1
--%>

<%@page import="Controllers.Tienda"%>
<%@page import="Controllers.productoOrden"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <body>
        <h1>pppppppppppppppp</h1>
        <%
            String nombre = request.getParameter("nombre");
            String precio = request.getParameter("precio");
            String cantidad = request.getParameter("cantidad");
            String unidad = request.getParameter("unidad");
            productoOrden proc = new productoOrden(nombre, precio, cantidad, unidad);
            int index = 0;
            for (productoOrden x : Tienda.orden) {
                if (x.nombre.equals(proc.nombre)) {
                    index = Tienda.orden.indexOf(x);
                }
            }
            Tienda.orden.remove(index);
            if (Integer.parseInt(cantidad) > 0){ 
                Tienda.orden.add(proc); 
            }
            response.sendRedirect("../inicio.jsp");
        %>
    </body>
</html>
