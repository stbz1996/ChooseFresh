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
