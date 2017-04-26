
package Controllers;
import java.util.ArrayList;
import java.util.List;

public class Tienda {
    
    public static List<ObjetoTienda> mostrarTienda(){
        List<ObjetoTienda> lista = new ArrayList<>();
        
        lista.add(new ObjetoTienda(0, "Bananos", 1000, "Kilos"));
        lista.add(new ObjetoTienda(1, "Piña", 1000, "Kilos"));
        lista.add(new ObjetoTienda(2, "Sandia", 1000, "Kilos"));
        lista.add(new ObjetoTienda(3, "Naranja", 1000, "Kilos"));
        lista.add(new ObjetoTienda(4, "Melón", 1000, "Kilos"));
        return lista;
    }
}
