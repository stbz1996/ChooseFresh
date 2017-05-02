/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import Conection.OracleConection;
import java.util.ArrayList;

/**
 *
 * @author usuaria
 */
public class ConsultarOrden {
    public ConsultarOrden(){}
    
    public ArrayList<Orden> obtenerOrdenes(int ultimoIdOrden){
        OracleConection conection = new OracleConection();
        return conection.consultarOrdenes(ultimoIdOrden);
    }
}
