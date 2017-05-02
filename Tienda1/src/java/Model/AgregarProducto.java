
package Model;

import Conection.OracleConection;

public class AgregarProducto {
    
    public AgregarProducto(){
    }
    
    public boolean crearProducto(String nombre, String precio, String unidad, String categoria, String imagen, int idProducto){
        OracleConection conection = new OracleConection();
        Parametro[] parametros = new Parametro[7];
        parametros[0] = new Parametro("idProducto", String.valueOf(idProducto));
        parametros[1] = new Parametro("nombre", nombre);
        parametros[2] = new Parametro("precio", precio);
        parametros[3] = new Parametro("unidad", unidad);
        parametros[4] = new Parametro("categoria", categoria);
        parametros[5] = new Parametro("imagen", imagen);
        parametros[6] = new Parametro("estado", "true");
        try{
            conection.agregarProducto(parametros,idProducto);
            return true;
        }catch(Exception ex){
            return false;
        }
        
    }
}
