/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import Conection.OracleConection;
import Controllers.ObjetoTienda;
import java.util.ArrayList;

/**
 *
 * @author usuaria
 */
public class ObtenerProductos {
    public ObtenerProductos(){}
    
    public ArrayList<ObjetoTienda> consultarProductos(int idProducto){
        OracleConection oracleConection = new OracleConection();
        return oracleConection.consultarProductos(idProducto);
    }
}
