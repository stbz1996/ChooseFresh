
package Model;

import Controllers.ObjetoTienda;
import java.util.ArrayList;
import java.util.List;

public class objetosTienda {
    public objetosTienda(){}
    
    public List<ObjetoTienda> retornarTienda(){
        List<ObjetoTienda> lista = new ArrayList<>();
        lista.add(new ObjetoTienda("Bananos", 1522, "Kg", "Frutas", "http://eva.hn/wp-content/uploads/2014/01/bananasA.jpg"));
        return lista;
    }
    
    
    
}
