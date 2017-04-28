<%@page import="Controllers.Tienda"%>
<%@page import="java.util.List"%>
<%@page import="Controllers.productoOrden"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <body>
        <h1>Hello World!</h1>
        <% 
            //////////////////////////////////////
            /// ingresa el producto a la orden ///
            //////////////////////////////////////
            
            String nombre = request.getParameter("nombre");
            String precio = request.getParameter("precio");
            String cantidad = request.getParameter("cantidad");
            String unidad = request.getParameter("unidad");
            
            ArrayList<productoOrden> lista = (ArrayList<productoOrden>)session.getAttribute("orden");
            productoOrden proc = new productoOrden(nombre, precio, cantidad, unidad);
                   

            lista.add(proc);
            session.setAttribute("orden", lista);
            int cont1 = 0;
            response.sendRedirect("../inicio.jsp");
        %>
        
    
       
        
       
        
    </body>
</html>
