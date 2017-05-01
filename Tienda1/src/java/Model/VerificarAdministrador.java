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
public class VerificarAdministrador {
    
    private String username;
    private String password;
    
    public VerificarAdministrador(String username, String password){
        this.username = username;
        this.password = password;
    }
    
    public boolean consultarAdministrador(){
        OracleConection conection = new OracleConection();
        try{
            Parametro[] parametros = conection.consultarAdministrador(username);//Si retorna parametros significa que existe usuario
            String consultaPassword = parametros[4].getValor();
            String consultaEstado = parametros[5].getValor();
            return (consultaPassword.equals(password));
        }catch(Exception ex){
            return false;
        }
    }  
}
