
package Controllers;
import static Controllers.Tienda.orden;
import Model.AgregarOrden;
import Model.AgregarProducto;
import Model.Contador;
import Model.ContadorOrden;
import Model.ObtenerProductos;
import Model.objetosTienda;
import Model.Orden;
import Model.ConsultarOrden;
import java.util.ArrayList;
import java.util.List;

public class Tienda {
    public static List<ObjetoTienda> frutas = new ArrayList<>();
    public static List<ObjetoTienda> Verduras = new ArrayList<>();
    public static List<ObjetoTienda> Vegetales = new ArrayList<>();
    public static List<ObjetoTienda> Legumbres = new ArrayList<>();
    public static List<ObjetoTienda> Tubérculos = new ArrayList<>();
    public static List<ObjetoTienda> Semillas = new ArrayList<>();
    public static List<ObjetoTienda> Hortalizas = new ArrayList<>();
    public static List<productoOrden> orden = new ArrayList<>();
    public static List<ObjetoTienda> lista = new ArrayList<>();
    
    
    public static boolean enviarOrden(String dir, String ord){
        ContadorOrden contador = new ContadorOrden();
        int idOrden = contador.obtenerIdOrden();
        int newIdOrden = idOrden + 1;
        contador.incrementarIdOrden(newIdOrden);
        AgregarOrden agregarOrden = new AgregarOrden();
        return agregarOrden.crearOrden(String.valueOf(idOrden), dir, ord);
    }
    
    public static void llenarTienda(){
        for (int i = 0; i < 900; i++) {
            Tienda.agregarProducto("Brócoli" + i, "1300", "c/u", "Hortalizas", "http://www.odepa.cl/imagenes/BROCOLI.jpg");
        }
    }
    
    public static void agregarEnOrden(productoOrden proc){
        int index = -1;
        for (productoOrden x : Tienda.orden) {
            if (x.nombre.equals(proc.nombre)) {
                index = Tienda.orden.indexOf(x);
                break;
            }
        }
        if ((proc.cantidad > 0) && (index == -1)) {
            orden.add(proc);    
        } 
        if ((proc.cantidad > 0) && (index != -1)) {
            orden.remove(index);
            orden.add(proc);  
        }
    }
     
    public static void pedirtienda(){
        Tienda.frutas.clear();
        Tienda.Verduras.clear();
        Tienda.Vegetales.clear();
        Tienda.Legumbres.clear();
        Tienda.Tubérculos.clear();
        Tienda.Semillas.clear();
        Tienda.Hortalizas.clear();
        Tienda.lista.clear();
        Contador obtenerContador = new Contador();
        int idProducto = obtenerContador.obtenerIdProducto();
        lista = objetosTienda.retornarTienda(idProducto);

        for (int i = 0; i < lista.size(); i++) {
            ObjetoTienda nuevo = lista.get(i);
            switch (lista.get(i).categoria) {
                case "Frutas":Tienda.frutas.add(nuevo);          break;
                case "Verduras":Tienda.Verduras.add(nuevo);      break; 
                case "Vegetales":Tienda.Vegetales.add(nuevo);    break;
                case "Legumbres":Tienda.Legumbres.add(nuevo);    break;
                case "Tuberculos":Tienda.Tubérculos.add(nuevo);  break;
                case "Semillas":Tienda.Semillas.add(nuevo);      break;
                case "Hortalizas":Tienda.Hortalizas.add(nuevo);  break;
            }
        }
    }
        
    public static boolean agregarProducto(String nombre, String precio, String unidad, String categoria, String img){
        Contador obtenerContador = new Contador();
        int idProducto = obtenerContador.obtenerIdProducto();
        AgregarProducto agregarProducto = new AgregarProducto();
        int newIdProducto = idProducto + 1;
        obtenerContador.incrementarIdProducto(newIdProducto);
        return agregarProducto.crearProducto(nombre, precio, unidad, categoria, img, idProducto);
    }
    
    public ArrayList<ObjetoTienda> consultarProductos(){
        Contador obtenerContador = new Contador();
        int idProducto = obtenerContador.obtenerIdProducto()-1;
        ObtenerProductos obtenerProductos = new ObtenerProductos();
        return obtenerProductos.consultarProductos(idProducto);
        
    }
    
    public static ArrayList<Orden> consultarOrdenes(){
        ContadorOrden contador = new ContadorOrden();
        int idOrden = contador.obtenerIdOrden()-1;
        ConsultarOrden consultarOrden = new ConsultarOrden();
        List<Orden> x = consultarOrden.obtenerOrdenes(idOrden);
        return consultarOrden.obtenerOrdenes(idOrden);
    }
}
