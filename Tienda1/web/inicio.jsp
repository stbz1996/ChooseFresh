<%@page import="java.util.ArrayList"%>
<%@page import="Controllers.productoOrden"%>
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
            SessionActual usuarioActual = (SessionActual)session.getAttribute("usuarioActual");
            ///////////////////////////////////////
            /// Carga la tienda en una variable ///
            ///////////////////////////////////////
            Tienda.pedirtienda();
            List<ObjetoTienda> frutas = Tienda.frutas;
            List<ObjetoTienda> verduras = Tienda.Verduras; 
            List<ObjetoTienda> vegetales = Tienda.Vegetales; 
            List<ObjetoTienda> legumbres = Tienda.Legumbres; 
            List<ObjetoTienda> tuberculos = Tienda.Tubérculos; 
            List<ObjetoTienda> semillas = Tienda.Semillas; 
            List<ObjetoTienda> hortalizas = Tienda.Hortalizas; 
            int cont1 = 0; 
            int cont2 = 0; 
            int cont3 = 0; 
            int cont4 = 0;
            int cont5 = 0; 
            int cont6 = 0; 
            int cont7 = 0;
            
            int cont8 = 1;
            int finalizar = 0;
            if (Tienda.orden.size() > 0) {
                finalizar = Tienda.orden.size();
            }
            

        %>
        
        <div class="Primario">
            <div class="encabezado">
                <!TODO: En vez de usuario poner nombre y apellido>
                <h3 id="textoIzq">Bienvenido a la tienda <%=usuarioActual.user%></h3>
                <button id="botonEncabezado">Salir</button>
                <button id="botonEncabezado">Login</button>
                <button id="botonEncabezado">Pedir</button>
                <button id="botonEncabezado" onclick="mostrarOrden()">Ver Orden</button>
            </div>

            <div class="barralateralIzq">
                <h1 id="textoGrande">Categorias</h1>
                <button id="cajaCategoria" onclick="mostrarZonaFrutas()">  Frutas     </button>
                <button id="cajaCategoria" onclick="mostrarZonaVerduras()">  Verduras   </button>
                <button id="cajaCategoria" onclick="mostrarZonaVegetales()">  Vegetales  </button>
                <button id="cajaCategoria" onclick="mostrarZonaLegumbres()">  Legumbres  </button>
                <button id="cajaCategoria" onclick="mostrarZonaTuberculos()">  Tubérculos </button>
                <button id="cajaCategoria" onclick="mostrarZonaSemillas()">  Semillas   </button>
                <button id="cajaCategoria" onclick="mostrarZonaHortalizas()">  Hortalizas </button>
            </div>
            
            <div class="contenido" id="cont">
                <h1 id="textoGrande2">Tienda</h1>
                
                <div id="ZonaFrutas">
                    <c:forEach var="i" begin="<%=cont1%>" end="<%=frutas.size()-1%>">
                        <form id="objetoTienda" name="" action="Operaciones/AgregarAorden.jsp">
                            <h3 id="txtoProducto" ><%=frutas.get(cont1).nombre%></h3>
                            <h4 id="txtoProducto"><%=frutas.get(cont1).precio%> por <%=frutas.get(cont1).unidad%></h4>
                            <img id="imgProducto" src="https://lpcdedios.files.wordpress.com/2013/11/bananas-01.jpg"/>
                            <input type="number"  name="cantidad" max="100" min="0" id="selector" required="required"/><p id="unidad">
                            <%=frutas.get(cont1).unidad%></p>
                            <input type="text" style="display: none" name="nombre" value="<%=frutas.get(cont1).nombre%>"/>
                            <input type="text" style="display: none" name="precio" value="<%=frutas.get(cont1).precio%>"/>
                            <input type="text" style="display: none" name="unidad" value="<%=frutas.get(cont1).unidad%>"/>
                            <input type="submit" value="Agregar" id="boton2"/> 
                        </form> 
                        <p style="display: none"><%=  cont1 += 1 %></p>
                    </c:forEach>
                </div>
                
                <div id="ZonaVerduras">
                    <c:forEach var="i" begin="<%=cont2%>" end="<%=verduras.size()-1%>">
                        <form id="objetoTienda" name="" action="Operaciones/AgregarAorden.jsp">
                            <h3 id="txtoProducto"><%=verduras.get(cont2).nombre%></h3>
                            <h4 id="txtoProducto"><%=verduras.get(cont2).precio%> por <%=verduras.get(cont2).unidad%></h4>
                            <img id="imgProducto" src="https://lpcdedios.files.wordpress.com/2013/11/bananas-01.jpg"/>
                            <input type="number" name="cantidad" max="100" min="0" id="selector" required="required"/><p id="unidad">
                            <%=verduras.get(cont2).unidad%></p>
                            <input type="text" style="display: none" name="nombre" value="<%=verduras.get(cont2).nombre%>"/>
                            <input type="text" style="display: none" name="precio" value="<%=verduras.get(cont2).precio%>"/>
                            <input type="text" style="display: none" name="unidad" value="<%=verduras.get(cont2).unidad%>"/>
                            <input type="submit" value="Agregar" id="boton2"/>
                        </form> 
                        <p style="display: none"><%=  cont2 += 1 %></p>
                    </c:forEach>
                </div>
                
                <div id="ZonaVegetales">
                    <c:forEach var="i" begin="<%=cont3%>" end="<%=vegetales.size()-1%>">
                        <form id="objetoTienda" name="" action="Operaciones/AgregarAorden.jsp">
                            <h3 id="txtoProducto"><%=vegetales.get(cont3).nombre%></h3>
                            <h4 id="txtoProducto"><%=vegetales.get(cont3).precio%> por <%=vegetales.get(cont3).unidad%></h4>
                            <img id="imgProducto" src="https://lpcdedios.files.wordpress.com/2013/11/bananas-01.jpg"/>
                            <input type="number" name="cantidad" max="100" min="0" id="selector" required="required"/><p id="unidad">
                            <%=vegetales.get(cont3).unidad%></p>
                            <input type="text" style="display: none" name="nombre" value="<%=vegetales.get(cont3).nombre%>"/>
                            <input type="text" style="display: none" name="precio" value="<%=vegetales.get(cont3).precio%>"/>
                            <input type="text" style="display: none" name="unidad" value="<%=vegetales.get(cont3).unidad%>"/>
                            <input type="submit" value="Agregar" id="boton2"/>
                        </form> 
                        <p style="display: none"><%=  cont3 += 1 %></p>
                    </c:forEach>
                </div>
                
                <div id="ZonaLegumbres">
                    <c:forEach var="i" begin="<%=cont4%>" end="<%=legumbres.size()-1%>">
                        <form id="objetoTienda" name="" action="Operaciones/AgregarAorden.jsp">
                            <h3 id="txtoProducto"><%=legumbres.get(cont4).nombre%></h3>
                            <h4 id="txtoProducto"><%=legumbres.get(cont4).precio%> por <%=legumbres.get(cont4).unidad%></h4>
                            <img id="imgProducto" src="https://lpcdedios.files.wordpress.com/2013/11/bananas-01.jpg"/>
                            <input type="number" name="cantidad" max="100" min="0" id="selector" required="required"/><p id="unidad">
                            <%=legumbres.get(cont4).unidad%></p>
                            <input type="text" style="display: none" name="nombre" value="<%=legumbres.get(cont4).nombre%>"/>
                            <input type="text" style="display: none" name="precio" value="<%=legumbres.get(cont4).precio%>"/>
                            <input type="text" style="display: none" name="unidad" value="<%=legumbres.get(cont4).unidad%>"/>
                            <input type="submit" value="Agregar" id="boton2"/>
                        </form> 
                        <p style="display: none"><%=  cont4 += 1 %></p>
                    </c:forEach>
                </div>
                
                <div id="ZonaTuberculos">
                    <c:forEach var="i" begin="<%=cont5%>" end="<%=tuberculos.size()-1%>">
                        <form id="objetoTienda" name="" action="Operaciones/AgregarAorden.jsp">
                            <h3 id="txtoProducto"><%=tuberculos.get(cont5).nombre%></h3>
                            <h4 id="txtoProducto"><%=tuberculos.get(cont5).precio%> por <%=tuberculos.get(cont5).unidad%></h4>
                            <img id="imgProducto" src="https://lpcdedios.files.wordpress.com/2013/11/bananas-01.jpg"/>
                            <input type="number" name="cantidad" max="100" min="0" id="selector" required="required"/><p id="unidad">
                            <%=tuberculos.get(cont5).unidad%></p>
                            <input type="text" style="display: none" name="nombre" value="<%=tuberculos.get(cont5).nombre%>"/>
                            <input type="text" style="display: none" name="precio" value="<%=tuberculos.get(cont5).precio%>"/>
                            <input type="text" style="display: none" name="unidad" value="<%=tuberculos.get(cont5).unidad%>"/>
                            <input type="submit" value="Agregar" id="boton2"/>
                        </form> 
                        <p style="display: none"><%=  cont5 += 1 %></p>
                    </c:forEach>
                </div>
                
                <div id="ZonaSemillas">
                    <c:forEach var="i" begin="<%=cont6%>" end="<%=semillas.size()-1%>">
                        <form id="objetoTienda" name="" action="Operaciones/AgregarAorden.jsp">
                            <h3 id="txtoProducto"><%=semillas.get(cont6).nombre%></h3>
                            <h4 id="txtoProducto"><%=semillas.get(cont6).precio%> por <%=semillas.get(cont6).unidad%></h4>
                            <img id="imgProducto" src="https://lpcdedios.files.wordpress.com/2013/11/bananas-01.jpg"/>
                            <input type="number" name="cantidad" max="100" min="0" id="selector" required="required"/><p id="unidad">
                            <%=semillas.get(cont6).unidad%></p>
                            <input type="text" style="display: none" name="nombre" value="<%=semillas.get(cont6).nombre%>"/>
                            <input type="text" style="display: none" name="precio" value="<%=semillas.get(cont6).precio%>"/>
                            <input type="text" style="display: none" name="unidad" value="<%=semillas.get(cont6).unidad%>"/>
                            <input type="submit" value="Agregar" id="boton2"/>
                        </form> 
                        <p style="display: none"><%=  cont6 += 1 %></p>
                    </c:forEach>
                </div>
                
                <div id="ZonaHortalizas">
                    <c:forEach var="i" begin="<%=cont7%>" end="<%=hortalizas.size()-1%>">
                        <form id="objetoTienda" name="" action="Operaciones/AgregarAorden.jsp">
                            <h3 id="txtoProducto"><%=hortalizas.get(cont7).nombre%></h3>
                            <h4 id="txtoProducto"><%=hortalizas.get(cont7).precio%> por <%=hortalizas.get(cont7).unidad%></h4>
                            <img id="imgProducto" src="https://lpcdedios.files.wordpress.com/2013/11/bananas-01.jpg"/>
                            <input type="number" name="cantidad" max="100" min="0" id="selector" required="required"/><p id="unidad">
                            <%=hortalizas.get(cont7).unidad%></p>
                            <input type="text" style="display: none" name="nombre" value="<%=hortalizas.get(cont7).nombre%>"/>
                            <input type="text" style="display: none" name="precio" value="<%=hortalizas.get(cont7).precio%>"/>
                            <input type="text" style="display: none" name="unidad" value="<%=hortalizas.get(cont7).unidad%>"/>
                            <input type="submit" value="Agregar" id="boton2"/>
                        </form> 
                        <p style="display: none"><%=  cont7 += 1 %></p>
                    </c:forEach>
                </div>
                
                
                
    
                <div id="ordenOculta">
                    <c:forEach var="i" begin="<%=cont8%>" end="<%=finalizar%>">
                        <div id="contenedorProcOrden">
                                <form action="Operaciones/EliminarEnOrden.jsp">
                                    <div id="textoporden1"><%=Tienda.orden.get(cont8 -1).nombre%></div>
                                    <div id="textoporden2"><%=Tienda.orden.get(cont8 -1).precio%></div>
                                    <div id="textoporden3"><input id="textoporden7" type="number" name="cantidad" value="<%=Tienda.orden.get(cont8 -1).cantidad%>" min="0" max="100"/></div>    
                                    <div id="textoporden4"><%=Tienda.orden.get(cont8 -1).unidad%></div>
                                    <div id="textoporden6"><%=Tienda.orden.get(cont8 -1).precio * Tienda.orden.get(cont8 -1).cantidad %></div>
                                    <input type="text" style="display: none" name="nombre" value="<%=Tienda.orden.get(cont8 -1).nombre%>"/>
                                    <input type="text" style="display: none" name="precio" value="<%=Tienda.orden.get(cont8 -1).precio%>"/>
                                    <input type="text" style="display: none" name="unidad" value="<%=Tienda.orden.get(cont8 -1).unidad%>"/>
                                    <input id="textoporden5" type="submit" value="Modificar" />
                                </form> 
                            </div>
                        <p style="display: none"><%=  cont8 += 1 %></p>
                    </c:forEach>
                </div>  
            </div>   
        </div>   
    </body>
</html>

