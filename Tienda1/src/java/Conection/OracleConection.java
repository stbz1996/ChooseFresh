package Conection;


import Model.*;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;

import org.apache.avro.Schema;
import org.codehaus.jackson.JsonNode;
import org.codehaus.jackson.node.JsonNodeFactory;
import org.codehaus.jackson.node.ObjectNode;

import oracle.kv.KVStore;
import oracle.kv.KVStoreConfig;
import oracle.kv.KVStoreFactory;
import oracle.kv.Key;
import oracle.kv.ValueVersion;
import oracle.kv.avro.AvroCatalog;
import oracle.kv.avro.JsonAvroBinding;
import oracle.kv.avro.JsonRecord;

public class OracleConection {
    private static KVStore store;
    private static JsonAvroBinding jsonBinding;
    private final Schema.Parser parser;
    private final String storeName;
    private final String hostName;
    private final int hostPort;
    private final AvroCatalog avroCatalog;
    private final ObjectNode objectNode;
    
    public OracleConection(){
        parser = new Schema.Parser();                                           //Leer el formato JSON
        storeName = "kvstore";
        hostName = "localhost";
        hostPort = 5000;
        store = KVStoreFactory.getStore(new KVStoreConfig(storeName, hostName + ":" + hostPort));   //Crear conexion con Oracle NoSQL
        avroCatalog = store.getAvroCatalog();   //Obtener un catalogo de las clave/valor que se esta manejando
        objectNode = JsonNodeFactory.instance.objectNode();
    }
    
    //Cuando vamos a realizar los cambios de direccion
    //Path de Jorge = C:\\Users\\usuaria\\Downloads\\
    //Path de Steven = C:\\Users\\stbz1\\Downloads\\Oracle NoSql\\
    
    public void agregarUsuario(Parametro[] parametros, String usuario){
        
        //Obtener archivo con la estructura de la llave
        try{
            //TODO:Buscar forma para usar archivos en lugar del path
            parser.parse(new File("C:\\Users\\stbz1\\Downloads\\Oracle NoSql\\schemaUsuario.avsc"));
        }catch(IOException ex){
            ex.printStackTrace();
        }
        String keyString = "usuario" + usuario;                                 //Nombre de la llave a usar
        final Schema catalogSchema = parser.getTypes().get("basedatos.proyecto.usuario");//Obtener mapa de los tipos definidos en el esquema creado
        jsonBinding = avroCatalog.getJsonBinding(catalogSchema);                //Se crea una interfaz que es usada para la serializacion de los valores
        JsonRecord jsonRecord = new JsonRecord(objectNode,catalogSchema);       //Almacena los diferentes campos que se crearon en el schema
        
        //Se dan los valores a los campos
        for (Parametro parametro : parametros) {
            objectNode.put(parametro.getNombre(),parametro.getValor());
        }
        
        store.put(Key.createKey(keyString),jsonBinding.toValue(jsonRecord));    //Se almacena en la base de datos
    }
    
    public Parametro[] consultaUsuario(String usuario){
        
        try{
            //TODO:Buscar forma para usar archivos en lugar del path
            parser.parse(new File("C:\\Users\\stbz1\\Downloads\\Oracle NoSql\\schemaUsuario.avsc"));
        }catch(IOException ex){
            ex.printStackTrace();
        }
        String keyString = "usuario" + usuario;                                 //Nombre de la llave a usar
        final Schema catalogSchema = parser.getTypes().get("basedatos.proyecto.usuario");//Obtener mapa de los tipos definidos en el esquema
        jsonBinding = avroCatalog.getJsonBinding(catalogSchema);                //Se crea una interfaz que es usada para la serializacion de los valores        
        ValueVersion valueVersion = store.get(Key.createKey(keyString));        
        
        //Se obtienen los diferentes valores de la base de datos
        JsonRecord jsonRecord = jsonBinding.toObject(valueVersion.getValue());
        JsonNode jsonNode = jsonRecord.getJsonNode();
        
        //Asignacion de los valores en el arreglo de parametros
        Parametro[] parametros = new Parametro[6];
        parametros[0] = new Parametro("nombre",jsonNode.get("nombre").getTextValue());
        parametros[1] = new Parametro("apellido",jsonNode.get("apellido").getTextValue());
        parametros[2] = new Parametro("usuario",jsonNode.get("usuario").getTextValue());
        parametros[3] = new Parametro("correo",jsonNode.get("correo").getTextValue());
        parametros[4] = new Parametro("password",jsonNode.get("password").getTextValue());
        parametros[5] = new Parametro("estado",jsonNode.get("estado").getTextValue());
        
        return parametros;
    }    
    
    public void agregarAdministrador(Parametro[] parametros, String usuario){
        //Obtener archivo con la estructura de la llave
        try{
            //TODO:Buscar forma para usar archivos en lugar del path
            parser.parse(new File("C:\\Users\\stbz1\\Downloads\\Oracle NoSql\\schemaAdministrador.avsc"));
        }catch(IOException ex){
            ex.printStackTrace();
        }
        String keyString = "administrador" + usuario;
        final Schema catalogSchema = parser.getTypes().get("basedatos.proyecto.administrador");
        
        jsonBinding = avroCatalog.getJsonBinding(catalogSchema);
        
        JsonRecord jsonRecord = new JsonRecord(objectNode, catalogSchema);
        
        for (Parametro parametro:parametros){
            objectNode.put(parametro.getNombre(),parametro.getValor());
        }
        
        store.put(Key.createKey(keyString),jsonBinding.toValue(jsonRecord));
    }
    
    public Parametro[] consultarAdministrador(String usuario){
        try{
            //TODO:Buscar forma para usar archivos en lugar del path
            parser.parse(new File("C:\\Users\\usuaria\\Downloads\\schemaAdministrador.avsc"));
        }catch(IOException ex){
            ex.printStackTrace();
        }
        
        String keyString = "producto" + usuario;
        final Schema catalogSchema = parser.getTypes().get("basedatos.proyecto.administrador");
        jsonBinding = avroCatalog.getJsonBinding(catalogSchema);
        
        ValueVersion valueVersion = store.get(Key.createKey(keyString));
        
        JsonRecord jsonRecord = jsonBinding.toObject(valueVersion.getValue());
        JsonNode jsonNode = jsonRecord.getJsonNode();
        
        Parametro[] parametros = new Parametro[6];
        parametros[0] = new Parametro("nombre",jsonNode.get("nombre").getTextValue());
        parametros[1] = new Parametro("apellido",jsonNode.get("apellido").getTextValue());
        parametros[2] = new Parametro("usuario",jsonNode.get("usuario").getTextValue());
        parametros[3] = new Parametro("correo",jsonNode.get("correo").getTextValue());
        parametros[4] = new Parametro("password",jsonNode.get("password").getTextValue());
        parametros[5] = new Parametro("estado",jsonNode.get("estado").getTextValue());
        
        return parametros;
    }
    
    public void agregarProducto(Parametro[] parametros, int idProducto){
        try{
            //TODO:Buscar forma para usar archivos en lugar del path
            parser.parse(new File("C:\\Users\\usuaria\\Downloads\\schemaProducto.avsc"));
        }catch(IOException ex){
            ex.printStackTrace();
        }
        String keyString = "producto" + idProducto;                             //Nombre de la llave a usar
        final Schema catalogSchema = parser.getTypes().get("basedatos.proyecto.producto");//Obtener mapa de los tipos definidos en el esquema
        jsonBinding = avroCatalog.getJsonBinding(catalogSchema);                //Se crea una interfaz que es usada para la serializacion de los valores
        JsonRecord jsonRecord = new JsonRecord(objectNode, catalogSchema);      //Almacena los diferentes campos que se crearon en el schema
        
        //Se dan los valores a los campos
        for (Parametro parametro:parametros){
            objectNode.put(parametro.getNombre(),parametro.getValor());
        }
        
        store.put(Key.createKey(keyString),jsonBinding.toValue(jsonRecord));    //Se almacena en la base de datos
    }
    
    public Producto consultarProducto(int idProducto){
        
        try{
            //TODO:Buscar forma para usar archivos en lugar del path
            parser.parse(new File("C:\\Users\\usuaria\\Downloads\\schemaProducto.avsc"));
        }catch(IOException ex){
            ex.printStackTrace();
        }
        
        String keyString = "producto" + idProducto;                             //Nombre de la llave a usar
        final Schema catalogSchema = parser.getTypes().get("basedatos.proyecto.producto");
        jsonBinding = avroCatalog.getJsonBinding(catalogSchema);
        
        ValueVersion valueVersion = store.get(Key.createKey(keyString));
        
        JsonRecord jsonRecord = jsonBinding.toObject(valueVersion.getValue());
        JsonNode jsonNode = jsonRecord.getJsonNode();
        
        
        Parametro[] parametros = new Parametro[7];
        String nombre = jsonNode.get("nombre").getTextValue();
        int precio = Integer.parseInt(jsonNode.get("precio").getTextValue());
        String categoria = jsonNode.get("categoria").getTextValue();
        String unidad = jsonNode.get("unidad").getTextValue();
        String imagen = jsonNode.get("imagen").getTextValue();        
        return new Producto(nombre, precio, unidad, categoria,imagen,idProducto);
        
    }
    
    public ArrayList<Producto> consultarProductos(){
        try{
            //TODO:Buscar forma para usar archivos en lugar del path
            parser.parse(new File("C:\\Users\\usuaria\\Downloads\\schemaProducto.avsc"));
        }catch(IOException ex){
            ex.printStackTrace();
        }
        final Schema catalogSchema = parser.getTypes().get("basedatos.proyecto.producto");
        jsonBinding = avroCatalog.getJsonBinding(catalogSchema);
        ArrayList<Producto> productos = new ArrayList<Producto>();
        Producto producto = new Producto();
        
        for (int i = 1; i <= producto.getContador(); i++){
            producto = consultarProducto(i);
            productos.add(producto);
        }
        return productos;
        //los que van al for(Key, valueVersion, jsonRecord, jsonNode, parametros)
    }
}
