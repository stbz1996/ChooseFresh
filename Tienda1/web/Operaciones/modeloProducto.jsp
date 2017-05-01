
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script type="text/javascript" src="control.js"></script>
        <link rel="stylesheet" type="text/css" href="../CSS/estilos.css">
        <script src="JS/jquery.js" type="text/javascript"></script> 
        <script type="text/javascript" src="JS/control.js"></script>
        <title>JSP Page</title>
    </head>
    <body>
        <div class="login" >
            <h1>Añadir Productos</h1>
            <div id="crearProducto">
                <h3>Nombre</h3>
                <h3>Precio</h3>
                <h3>Unidad</h3>
                <h3>Categoria</h3>
                <h3>Imagen(url)</h3>
            </div>
            
            <div id="camposAllenar">
                <form method="POST" action="agregarProducto.jsp">
                    <input type="text" maxlength="20" minlength="4" required="" name="nombre"/>
                    <input type="number" value="precio" required=""             name="precio"/>
                    <input type="text" maxlength="20" minlength="1" required="" name="unidad" />
                    <SELECT NAME="categoria" SIZE=1"                            name="categoria"> 
                        <OPTION>Frutas</OPTION>
                        <OPTION>Verduras</OPTION>
                        <OPTION>Vegetales</OPTION>
                        <OPTION>Legumbres</OPTION> 
                        <OPTION>Tuberculos</OPTION> 
                        <OPTION>Semillas</OPTION> 
                        <OPTION>Hortalizas</OPTION> 
                    </SELECT>
                    <input type="text" minlength="4" required=""                name="imagen" />
                    <input type="submit" value="Agregar" />
                </form>
            </div>
            <br><br>
            <%
                String msj = (String)session.getAttribute("msj");
                session.setAttribute("msj", "");
                //if (msj == null) {msj = "";}
            %>
            <p id="msjOculto" style="text-align: center"><%=msj%></p>
        </div>
            
    </body>
</html>
