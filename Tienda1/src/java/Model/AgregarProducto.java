
package Model;

import Conection.OracleConection;

public class AgregarProducto {
    
    public AgregarProducto(){
    }
    
    public boolean crearProducto(String nombre, String precio, String unidad, String categoria, String imagen){
        OracleConection conection = new OracleConection();
        Parametro[] parametros = new Parametro[6];
        parametros[0] = new Parametro("nombre", nombre);
        parametros[1] = new Parametro("precio", precio);
        parametros[2] = new Parametro("unidad", unidad);
        parametros[3] = new Parametro("categoria", categoria);
        parametros[4] = new Parametro("imagen", imagen);
        parametros[5] = new Parametro("estado", "true");
        try{
            conection.agregarProducto(parametros);
            return true;
        }catch(Exception ex){
            return false;
        }
        
    }
}
