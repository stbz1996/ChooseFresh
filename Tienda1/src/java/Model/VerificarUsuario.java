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
public class VerificarUsuario {
    
    private String username;
    private String password;
    
    public VerificarUsuario(String username, String password){
        this.username = username;
        this.password = password;
    }
    
    public boolean consultarUsuario(){
        OracleConection conection = new OracleConection();
        try{
            Parametro[] parametros = conection.consultaUsuario(username);       //Si retorna parametros significa que existe usuario
            String consultaPassword = parametros[4].getValor();
            String consultaEstado = parametros[5].getValor();
            return (consultaPassword.equals(password));
        }catch(Exception ex){
            return false;
        }
    }  
    
}
