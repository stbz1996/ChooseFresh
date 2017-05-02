
package Model;

import Conection.OracleConection;

public class Contador {
    public Contador(){}
    
    public int obtenerIdProducto(){
        OracleConection conection = new OracleConection();
        return conection.getIdProducto();
    }
    
    public void incrementarIdProducto(int idProducto){
        OracleConection conection = new OracleConection();
        conection.setIdProducto(idProducto);
    }
}
