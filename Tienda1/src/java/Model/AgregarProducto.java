
package Model;

import Conection.OracleConection;

public class AgregarProducto {
    
    private int variable;
    private final int idProducto;
    private static int contador = 1;
    
    public AgregarProducto(){
        idProducto = contador;
        contador++;
    }
    
    public AgregarProducto(int variable){
        this.variable = variable;
        idProducto = contador;
    }
    
    public boolean crearProducto(String nombre, String precio, String unidad, String categoria, String imagen){
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
            conection.agregarProducto(parametros, idProducto);
            return true;
        }catch(Exception ex){
            return false;
        }
        
    }
    
    public int getContador(){return contador;}
}
