
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
                <h3>Imagen</h3>
            </div>
            
            <div id="camposAllenar">
                <form method="POST" action="">
                    <input type="text" maxlength="20" minlength="4" required="" />
                    <input type="number" value="precio" required="" />
                    <input type="text" maxlength="20" minlength="4" required="" />
                    <SELECT NAME="categoria" SIZE=1"> 
                        <OPTION VALUE="1">Frutas</OPTION>
                        <OPTION VALUE="2">Verduras</OPTION>
                        <OPTION VALUE="3">Vegetales</OPTION>
                        <OPTION VALUE="4">Legumbres</OPTION> 
                        <OPTION VALUE="5">Tuberculos</OPTION> 
                        <OPTION VALUE="6">Semillas</OPTION> 
                        <OPTION VALUE="7">Hortalizas</OPTION> 
                    </SELECT>
                    <input type="text" minlength="4" required="" />
                </form>
            </div>
        </div>
      
    </body>
</html>
