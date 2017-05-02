
package Controllers;
import Model.AgregarProducto;
import Model.ObtenerProductos;
import Model.objetosTienda;
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
    
    
    public static void llenarTienda(){
        //AgregarProducto proc = new AgregarProducto();
        /*for (int i = 0; i < 1000; i++) {
            proc.crearProducto("Brócoli" + i, "555", "c/u", "Hortalizas", "http://www.odepa.cl/imagenes/BROCOLI.jpg");
        }*/
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
        
        List<ObjetoTienda> lista = objetosTienda.retornarTienda();

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
        AgregarProducto agregarProducto = new AgregarProducto();
        return agregarProducto.crearProducto(nombre, precio, unidad, categoria, img);
    }
    
    public ArrayList<ObjetoTienda> consultarProductos(){
        ObtenerProductos obtenerProductos = new ObtenerProductos();
        return obtenerProductos.consultarProductos();
    }

}
