
package Controllers;
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
    
    
    public static void pedirtienda(){
        // esto va a contener todo el listado que viene desde la base
        List<ObjetoTienda> lista = new ArrayList<>();
        lista.add(new ObjetoTienda("Bananos", 1522, "Kg", "Frutas", ""));
        lista.add(new ObjetoTienda("Sandia", 4520, "Kg", "Frutas", ""));
        lista.add(new ObjetoTienda("Kiwi", 999, "Kg", "Frutas", ""));
        lista.add(new ObjetoTienda("Piña", 1247, "Kg", "Frutas", ""));
        lista.add(new ObjetoTienda("Camote", 3000, "Kg", "Verduras", ""));
        lista.add(new ObjetoTienda("Naranja", 4102, "Kg", "Frutas", ""));
        lista.add(new ObjetoTienda("Melón", 2556, "Kg", "Tuberculos", ""));
        lista.add(new ObjetoTienda("xx", 2556, "Kg", "Hortalizas", ""));
        
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
        if (frutas.isEmpty()) {frutas.add(new     ObjetoTienda("No disponible", 0, "Kg", "Frutas", ""));}
        if (Verduras.isEmpty()) {Verduras.add(new   ObjetoTienda("No disponible", 0, "Kg", "Verduras", ""));}
        if (Vegetales.isEmpty()) {Vegetales.add(new  ObjetoTienda("No disponible", 0, "Kg", "Vegetales", ""));}
        if (Legumbres.isEmpty()) {Legumbres.add(new  ObjetoTienda("No disponible", 0, "Kg", "Legumbres", ""));}
        if (Tubérculos.isEmpty()) {Tubérculos.add(new ObjetoTienda("No disponible", 0, "Kg", "Tuberculos", ""));}
        if (Semillas.isEmpty()) {Semillas.add(new   ObjetoTienda("No disponible", 0, "Kg", "Semillas", ""));}
        if (Hortalizas.isEmpty()) {Hortalizas.add(new ObjetoTienda("No disponible", 0, "Kg", "Hortalizas", ""));}
    }
        
        
    
}
