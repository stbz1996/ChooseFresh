/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import Conection.OracleConection;

/**
 *
 * @author usuaria
 */
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
    
    public boolean crearProducto(String nombre, int precio, String unidad, String categoria, String imagen){
        OracleConection conection = new OracleConection();
        Parametro[] parametros = new Parametro[6];
        parametros[0] = new Parametro("idProducto", String.valueOf(idProducto));
        parametros[1] = new Parametro("nombre", nombre);
        parametros[2] = new Parametro("precio", String.valueOf(precio));
        parametros[3] = new Parametro("unidad", unidad);
        parametros[4] = new Parametro("categoria", categoria);
        parametros[5] = new Parametro("imagen", imagen);
        try{
            conection.agregarProducto(parametros, idProducto);
            return true;
        }catch(Exception ex){
            return false;
        }
        
    }
    
    public int getContador(){return contador;}
}
