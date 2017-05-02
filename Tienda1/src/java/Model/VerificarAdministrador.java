
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

    public boolean crearAdmin(String nombre, String apellido, String usuario,String correo,String pass1){
        try{
            OracleConection conection = new OracleConection();
            if(consultarAdministrador()){
                return false;
            }else{
                Parametro[] parametros = new Parametro[6];
                parametros[0] = new Parametro("nombre", nombre);
                parametros[1] = new Parametro("apellido", apellido);
                parametros[2] = new Parametro("usuario", usuario);
                parametros[3] = new Parametro("correo", correo);
                parametros[4] = new Parametro("password", password);
                parametros[5] = new Parametro("estado", "true");
                conection.agregarAdministrador(parametros, usuario);
                return true;
            } 
        }
        catch(Exception ex){
            return false;
        }
    }
}
