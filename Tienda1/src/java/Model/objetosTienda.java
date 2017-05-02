package Model;
import Conection.OracleConection;
import Controllers.ObjetoTienda;
import java.util.ArrayList;
import java.util.List;

public class objetosTienda {
   
    
    public static List<ObjetoTienda> lista = new ArrayList<>();
    
    public objetosTienda(){}

    
    
    

    public static List<ObjetoTienda> retornarTienda(int idProducto){
        lista.clear();
        // conecta con la base
        OracleConection conect = new OracleConection();
        lista = conect.consultarProductos(idProducto);
        
        return lista;
    }
    
    public static void llenarTienda(){
        String nombre = "";
        for (int i = 0; i < 1000; i++) {
            nombre = "Brócoli " + i;
            lista.add(new ObjetoTienda(nombre, 105, "c/u", "Hortalizas", "https://anticoagulado.files.wordpress.com/2015/01/brocoli_vitamina_k.jpg"));
        } 
    }
    
}
