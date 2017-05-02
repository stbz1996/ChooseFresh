
package Model;

import Conection.OracleConection;
import java.util.ArrayList;

public class ConsultarOrden {
    public ConsultarOrden(){}
    
    public ArrayList<Orden> obtenerOrdenes(int ultimoIdOrden){
        OracleConection conection = new OracleConection();
        return conection.consultarOrdenes(ultimoIdOrden);
    }
}
