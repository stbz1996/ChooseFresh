package Model;

import Conection.OracleConection;

public class ContadorOrden {
    public ContadorOrden(){}
    
    public int obtenerIdOrden(){
        OracleConection conection = new OracleConection();
        return conection.getIdOrden();
    }
    
    public void incrementarIdOrden(int idOrden){
        OracleConection conection = new OracleConection();
        conection.setIdOrden(idOrden);
    }
}
