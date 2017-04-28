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
        <link rel="stylesheet" type="text/css" href="CSS/estilos.css">
        <script src="JS/jquery.js" type="text/javascript"></script> 
        <script type="text/javascript" src="JS/control.js"></script>
        <title>JSP Page</title>
    </head>
    <body>
        <% 
            //////////////////////////////////////////////////////////////
            /// Hace las verificaciones del usuario que desea ingresar ///
            //////////////////////////////////////////////////////////////
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
        
        <div class="Primario">
            <div class="encabezado">
                
            </div>

            <div class="barralateralIzq">
                <br>
                <h1 id="textoGrande">Categorias</h1>
                <button id="cajaCategoria">  Frutas     </button>
                <button id="cajaCategoria">  Verduras   </button>
                <button id="cajaCategoria">  Vegetales  </button>
                <button id="cajaCategoria">  Legumbres  </button>
                <button id="cajaCategoria">  Tubérculos </button>
                <button id="cajaCategoria">  Semillas   </button>
                <button id="cajaCategoria">  Hortalizas </button>
            </div>
            
            <div class="contenido" id="cont">
                <h1 id="textoGrande2">Tienda</h1>
                
  
                   
                <form id="objetoTienda">
                    <h3 id="txtoProducto">Nombre del producto</h3>
                    <h4 id="txtoProducto">Valor por Unidad</h4>
                    <img id="imgProducto" src="https://lpcdedios.files.wordpress.com/2013/11/bananas-01.jpg"/>
                    <input type="number"  max="100" min="0" id="selector" required="required"/><p id="unidad">Kg</p>
                    <input type="submit" value="Agregar" id="boton2"/>
                </form>
                <form id="objetoTienda">
                    <h3 id="txtoProducto">Nombre del producto</h3>
                    <h4 id="txtoProducto">Valor por Unidad</h4>
                    <img id="imgProducto" src="https://lpcdedios.files.wordpress.com/2013/11/bananas-01.jpg"/>
                    <input type="number"  max="100" min="0" id="selector" required="required"/><p id="unidad">Kg</p>
                    <input type="submit" value="Agregar" id="boton2"/>
                </form>
                <form id="objetoTienda">
                    <h3 id="txtoProducto">Nombre del producto</h3>
                    <h4 id="txtoProducto">Valor por Unidad</h4>
                    <img id="imgProducto" src="https://lpcdedios.files.wordpress.com/2013/11/bananas-01.jpg"/>
                    <input type="number"  max="100" min="0" id="selector" required="required"/><p id="unidad">Kg</p>
                    <input type="submit" value="Agregar" id="boton2"/>
                </form>
                <form id="objetoTienda">
                    <h3 id="txtoProducto">Nombre del producto</h3>
                    <h4 id="txtoProducto">Valor por Unidad</h4>
                    <img id="imgProducto" src="https://lpcdedios.files.wordpress.com/2013/11/bananas-01.jpg"/>
                    <input type="number"  max="100" min="0" id="selector" required="required"/><p id="unidad">Kg</p>
                    <input type="submit" value="Agregar" id="boton2"/>
                </form>
                <form id="objetoTienda">
                    <h3 id="txtoProducto">Nombre del producto</h3>
                    <h4 id="txtoProducto">Valor por Unidad</h4>
                    <img id="imgProducto" src="https://lpcdedios.files.wordpress.com/2013/11/bananas-01.jpg"/>
                    <input type="number"  max="100" min="0" id="selector" required="required"/><p id="unidad">Kg</p>
                    <input type="submit" value="Agregar" id="boton2"/>
                </form>
                <form id="objetoTienda">
                    <h3 id="txtoProducto">Nombre del producto</h3>
                    <h4 id="txtoProducto">Valor por Unidad</h4>
                    <img id="imgProducto" src="https://lpcdedios.files.wordpress.com/2013/11/bananas-01.jpg"/>
                    <input type="number"  max="100" min="0" id="selector" required="required"/><p id="unidad">Kg</p>
                    <input type="submit" value="Agregar" id="boton2"/>
                </form>
                <form id="objetoTienda">
                    <h3 id="txtoProducto">Nombre del producto</h3>
                    <h4 id="txtoProducto">Valor por Unidad</h4>
                    <img id="imgProducto" src="https://lpcdedios.files.wordpress.com/2013/11/bananas-01.jpg"/>
                    <input type="number"  max="100" min="0" id="selector" required="required"/><p id="unidad">Kg</p>
                    <input type="submit" value="Agregar" id="boton2"/>
                </form>
                <form id="objetoTienda">
                    <h3 id="txtoProducto">Nombre del producto</h3>
                    <h4 id="txtoProducto">Valor por Unidad</h4>
                    <img id="imgProducto" src="https://lpcdedios.files.wordpress.com/2013/11/bananas-01.jpg"/>
                    <input type="number"  max="100" min="0" id="selector" required="required"/><p id="unidad">Kg</p>
                    <input type="submit" value="Agregar" id="boton2"/>
                </form>
                <form id="objetoTienda">
                    <h3 id="txtoProducto">Nombre del producto</h3>
                    <h4 id="txtoProducto">Valor por Unidad</h4>
                    <img id="imgProducto" src="https://lpcdedios.files.wordpress.com/2013/11/bananas-01.jpg"/>
                    <input type="number"  max="100" min="0" id="selector" required="required"/><p id="unidad">Kg</p>
                    <input type="submit" value="Agregar" id="boton2"/>
                </form>
                <form id="objetoTienda">
                    <h3 id="txtoProducto">Nombre del producto</h3>
                    <h4 id="txtoProducto">Valor por Unidad</h4>
                    <img id="imgProducto" src="https://lpcdedios.files.wordpress.com/2013/11/bananas-01.jpg"/>
                    <input type="number"  max="100" min="0" id="selector" required="required"/><p id="unidad">Kg</p>
                    <input type="submit" value="Agregar" id="boton2"/>
                </form>
                
            </div>   
            
        </div>
        <h1>Tienda</h1>
        
        <c:forEach var="i" begin="<%=cont%>" end="<%=lista.size()-1%>">

            <!-- Por cada elemento debo hacer un form -->
            <p> <%=lista.get(cont).nombre%> </p>
            
            

            <!-- este es el contador del bloque -->
            <p style="display: none"><%=  cont += 1 %></p>
        </c:forEach>
        
            
    </body>
</html>

