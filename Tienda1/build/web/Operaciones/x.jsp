<%-- 
    Document   : x
    Created on : 28/04/2017, 12:40:03 AM
    Author     : stbz1
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="Controllers.productoOrden"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <%
            ArrayList<productoOrden> lista = (ArrayList<productoOrden>)session.getAttribute("orden");
            int cont1 = 0;
        %>
        
        <c:forEach var="i" begin="<%=cont1%>" end="<%=lista.size()%>">
            <p>
                <%=cont1%>
                 <%=lista.get(cont1).nombre%>
                <%=lista.get(cont1).precio%>
                <%=lista.get(cont1).cantidad%>
                <%=lista.get(cont1).unidad%>
                <br><br><br>
            </p>
            
            <p style="display: none"><%=  cont1 += 1 %></p>
        </c:forEach>
    
    </body>
</html>
