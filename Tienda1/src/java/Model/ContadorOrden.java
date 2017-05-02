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
public class ContadorOrden {
    public ContadorOrden(){}
    
    public int obtenerIdOrden(){
        OracleConection conection = new OracleConection();
        return conection.getIdProducto();
    }
    
    public void incrementarIdOrden(int idProducto){
        OracleConection conection = new OracleConection();
        conection.setIdProducto(idProducto);
    }
}
