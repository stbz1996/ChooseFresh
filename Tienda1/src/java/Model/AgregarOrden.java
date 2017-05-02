package Model;

import Conection.OracleConection;

public class AgregarOrden {
    public AgregarOrden(){}
    
    public boolean crearOrden(String idOrden, String direccion, String pedido){
        OracleConection conection = new OracleConection();
        Parametro[] parametros = new Parametro[3];
        parametros[0] = new Parametro("idOrden", idOrden);
        parametros[1] = new Parametro("direccion", direccion);
        parametros[2] = new Parametro("pedido", pedido);
        try{
            conection.agregarOrden(parametros,idOrden);
            return true;
        }catch(Exception ex){
            return false;
        }
    }
}
