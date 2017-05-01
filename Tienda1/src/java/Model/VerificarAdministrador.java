
package Model;
import Conection.OracleConection;
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
