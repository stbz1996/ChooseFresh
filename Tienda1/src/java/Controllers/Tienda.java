
package Controllers;
import static Controllers.Tienda.orden;
import Model.AgregarOrden;
import Model.AgregarProducto;
import Model.Contador;
import Model.ContadorOrden;
import Model.ObtenerProductos;
import Model.objetosTienda;
import Model.Orden;
import Model.ConsultarOrden;
import java.util.ArrayList;
import java.util.List;

public class Tienda {
    public static List<ObjetoTienda> frutas = new ArrayList<>();
    public static List<ObjetoTienda> Verduras = new ArrayList<>();
    public static List<ObjetoTienda> Vegetales = new ArrayList<>();
    public static List<ObjetoTienda> Legumbres = new ArrayList<>();
    public static List<ObjetoTienda> Tubérculos = new ArrayList<>();
    public static List<ObjetoTienda> Semillas = new ArrayList<>();
    public static List<ObjetoTienda> Hortalizas = new ArrayList<>();
    public static List<productoOrden> orden = new ArrayList<>();
    public static List<ObjetoTienda> lista = new ArrayList<>();
    
    
    public static boolean enviarOrden(String dir, String ord){
        ContadorOrden contador = new ContadorOrden();
        int idOrden = contador.obtenerIdOrden();
        int newIdOrden = idOrden + 1;
        contador.incrementarIdOrden(newIdOrden);
        AgregarOrden agregarOrden = new AgregarOrden();
        return agregarOrden.crearOrden(String.valueOf(idOrden), dir, ord);
    }
    
    public static void llenarTienda(){

        // Frutas 
        String cat = "Frutas";
        Tienda.agregarProducto("Sandia",  "500",  "kg",  cat, "http://www.curiosfera.com/wp-content/uploads/2016/12/Sandia.jpg");
        Tienda.agregarProducto("Melon",   "550",  "kg",  cat, "http://www.sercano.com/wp-content/uploads/2016/09/melon.jpg");
        Tienda.agregarProducto("Guayaba", "900",  "kg",  cat, "https://www.plantasyremedios.com/wp-content/uploads/2015/11/guayaba-rica-en-vitamica-c-e1475010851715.jpg");
        Tienda.agregarProducto("Mango",   "600",  "kg",  cat, "http://cuantas-calorias.org/wp-content/uploads/2016/10/mango-2.jpg");
        Tienda.agregarProducto("Tomate",  "3200", "kg",  cat, "http://multimedia.mmc.com.do/multimedia/cdn_uploads/2015/11/TOMATE.jpg");
        Tienda.agregarProducto("Manzana", "500",  "c/u", cat, "https://mejorconsalud.com/wp-content/uploads/2014/06/manzanas.jpg");
        Tienda.agregarProducto("Banano",  "100",  "c/u", cat, "https://lpcdedios.files.wordpress.com/2013/11/bananas-01.jpg");
        Tienda.agregarProducto("Platano", "150",  "c/u", cat, "http://www.plastico.com/documenta/imagenes/120289/Fabrican-empaques-biodegradables-con-platano-GR.jpg");
        Tienda.agregarProducto("Fresas",  "800",  "c/u", cat, "http://fruteriadevalencia.com/wp-content/uploads/2015/02/FRESAS-Y-FRESONES-buena.jpg");
        Tienda.agregarProducto("Uvas",    "2500", "kg",  cat, "http://www.fundaciondelcorazon.com/images/stories/corazon-facil/impulso-vital/uvas.jpg");
        Tienda.agregarProducto("Naranja", "200",  "c/u", cat, "http://vivatumusica.com/wp-content/uploads/2016/07/naranja-1.jpg");
        Tienda.agregarProducto("Limon",   "150",  "c/u", cat, "http://static.commentcamarche.net/sante-medecine.commentcamarche.net/pictures/9QCUFx7f-citron.png");
        Tienda.agregarProducto("Pipa",    "300",  "c/u", cat, "http://3.bp.blogspot.com/-x6Gcup55AxY/UPLTZXgf5lI/AAAAAAAACiI/oVJsNRpAiUw/s1600/imagen1.png");
        Tienda.agregarProducto("Cocos",   "800",  "c/u", cat, "http://www.aldia.cr/en-forma/ejercicio-hidratacion_ALDIMA20130109_0035_4.jpg");
        
        // Verduras
        Tienda.agregarProducto("Acelga",    "690",  "rollo", "Verduras", "http://www7.uc.cl/sw_educ/agronomia/manual_poscosecha/archiv/imagenes/hires/fria/Chenopodiaceae/18acel0cali.jpg");
        Tienda.agregarProducto("Ajo",       "180",  "c/u",   "Verduras", "https://i.blogs.es/a25fe0/ajo/original.jpg");
        Tienda.agregarProducto("Apio",      "1350", "c/u",   "Verduras", "http://misremedios.com/wp-content/uploads/2015/09/Apio.jpg");
        Tienda.agregarProducto("Berenjena", "490",  "c/u",   "Verduras", "http://biotrendies.com/wp-content/uploads/2015/07/Berenjena.jpg");
        Tienda.agregarProducto("Cebolla",   "1050", "rollo", "Verduras", "http://www.vivirbienesunplacer.com/wp-content/uploads/cebolla-1.jpg");
        Tienda.agregarProducto("Espinaca",  "450",  "c/u",   "Verduras", "http://ejerciciosencasa.es/wp-content/uploads/2013/12/espinacas.jpg");
        Tienda.agregarProducto("Lechuga",   "400",  "c/u",   "Verduras", "http://biotrendies.com/wp-content/uploads/2015/07/lechuga.jpg");
        Tienda.agregarProducto("Nabo",      "450",  "c/u",   "Verduras", "http://www.packfruit.com.ar/media/productos/propiedades-del-nabo-1.jpg");
        Tienda.agregarProducto("Puerro",    "340",  "c/u",   "Verduras", "http://fruteriadevalencia.com/wp-content/uploads/2015/01/PUERROS-buena.jpg");
        Tienda.agregarProducto("Rabano",    "550",  "c/u",   "Verduras", "http://ensaladas.info/wp-content/uploads/2015/04/r%C3%A1bano.jpg");
        Tienda.agregarProducto("Remolacha", "650",  "c/u",   "Verduras", "https://s3.hdstatic.net/gridfs/holadoctor/625x470_53f3dcb1b9379520608b4567_2_36-1408490836219.jpg");
        Tienda.agregarProducto("Repollo",   "730",  "c/u",   "Verduras", "https://www.cuidadosdetusalud.com/wp-content/uploads/2015/05/propiedades-del-repollo.jpg");
        Tienda.agregarProducto("Zanahoria", "950",  "kilo",  "Verduras", "http://biotrendies.com/wp-content/uploads/2015/07/zanahoria.jpg");
        Tienda.agregarProducto("Camote",    "750",  "c/u",   "Verduras", "https://restaurantepiscomar.com/files/2014/10/camote-boniato.jpg");
        
        // Vegetales
        cat = "Vegetales";
        Tienda.agregarProducto("Chile Rojo",  "800",  "bolsa",  cat, "http://elmercaditosanoynatural.com/8/chile-dulce-organico-unidad.jpg");
        Tienda.agregarProducto("Remolacha",   "550",  "c/u",    cat, "https://s3.hdstatic.net/gridfs/holadoctor/625x470_53f3dcb1b9379520608b4567_2_36-1408490836219.jpg");
        Tienda.agregarProducto("Chile Verde", "900",  "bolsa",  cat, "http://1.bp.blogspot.com/_KdLp3eKpH5c/THtOaZzCpiI/AAAAAAAACbU/VZRIrVm2CQg/s1600/jalapeno1%5B1%5D.jpg");
        
        //Legumbres
        cat = "Legumbres";
        Tienda.agregarProducto("Lentejas",  "1250",  "kg",  cat, "http://www.dietasdeportivas.com/wp-content/uploads/2015/10/lentejas-beneficios.jpg");
        Tienda.agregarProducto("Habas",     "600",   "kg",  cat, "http://greenrevista.es/wp-content/uploads/2016/04/habas-web.jpg");
        Tienda.agregarProducto("Frijol",    "2000",  "",  cat, "http://austar.info/wp-content/uploads/2014/06/frijoles-austar.jpg");
        Tienda.agregarProducto("Habichuelas",  "800",  "",  cat, "http://www.miercolesdeplazaolimpica.com/wp-content/uploads/2015/01/habichuelas.jpg");
        
        //Tuberculos
        Tienda.agregarProducto("Papas",  "1350", "kilo", "Tuberculos", "http://www.mejoratuanimo.com/img_tapas_saludable/380a.jpg");
        Tienda.agregarProducto("Batata", "950",  "c/u",  "Tuberculos", "http://www.lavidalucida.com/wp-content/uploads/2015/09/batata-entera.jpg");
        Tienda.agregarProducto("Jicama", "600",  "c/u",  "Tuberculos", "http://nutrihambre.com.mx/wp-content/uploads/2016/06/jicama.jpg");
        Tienda.agregarProducto("Taro",   "720",  "c/u",  "Tuberculos", "http://images.wisegeek.com/raw-taro-root.jpg");

        //Semillas
        Tienda.agregarProducto("Arvejas",  "1800", "kg"   ,   "Semillas", "https://static.diariouno.com.ar/adjuntos/212/imagenes/012/822/0012822275.jpg");
        Tienda.agregarProducto("Nueces",   "770",  "bolsa",   "Semillas", "https://static.diariouno.com.ar/adjuntos/212/imagenes/012/822/0012822275.jpg");
        Tienda.agregarProducto("Mani",     "870",  "bolsa",   "Semillas", "https://static.diariouno.com.ar/adjuntos/212/imagenes/012/822/0012822275.jpg");
        Tienda.agregarProducto("Almendra", "1020", "bolsa",   "Semillas", "https://static.diariouno.com.ar/adjuntos/212/imagenes/012/822/0012822275.jpg");

        //Hortalizas
        cat = "Hortalizas";
        Tienda.agregarProducto("Nabo",       "400",   "bolsa",  cat, "http://www.packfruit.com.ar/media/productos/propiedades-del-nabo-1.jpg");
        Tienda.agregarProducto("Rabano",     "1500",  "bolsa",  cat, "http://ensaladas.info/wp-content/uploads/2015/04/r%C3%A1bano.jpg");
        Tienda.agregarProducto("calabacin",  "800",   "c/u",    cat, "https://static.hogarmania.com/archivos/201302/509-nutricion-calabacin-xl-668x400x80xX.jpg");
        Tienda.agregarProducto("Espinaca",   "900",   "c/u",    cat, "http://www.hoysaludable.com/wp-content/uploads/2016/03/10-beneficios-de-la-espinaca-e1457712442370.jpg");

        
        
        /*for (int i = 0; i < 300; i++) {
            Tienda.agregarProducto("Col" + i, "800", "c/u", "Hortalizas", "http://www.mercafruve.com/wp-content/uploads/2015/02/Col-Blanca-Mercafruve.jpg");
        }*/
    }
    
    
    public static void agregarEnOrden(productoOrden proc){
        int index = -1;
        for (productoOrden x : Tienda.orden) {
            if (x.nombre.equals(proc.nombre)) {
                index = Tienda.orden.indexOf(x);
                break;
            }
        }
        if ((proc.cantidad > 0) && (index == -1)) {
            orden.add(proc);    
        } 
        if ((proc.cantidad > 0) && (index != -1)) {
            orden.remove(index);
            orden.add(proc);  
        }
    }
     
    public static void pedirtienda(){
        Tienda.frutas.clear();
        Tienda.Verduras.clear();
        Tienda.Vegetales.clear();
        Tienda.Legumbres.clear();
        Tienda.Tubérculos.clear();
        Tienda.Semillas.clear();
        Tienda.Hortalizas.clear();
        Tienda.lista.clear();
        Contador obtenerContador = new Contador();
        int idProducto = obtenerContador.obtenerIdProducto();
        lista = objetosTienda.retornarTienda(idProducto);

        for (int i = 0; i < lista.size(); i++) {
            ObjetoTienda nuevo = lista.get(i);
            switch (lista.get(i).categoria) {
                case "Frutas":Tienda.frutas.add(nuevo);          break;
                case "Verduras":Tienda.Verduras.add(nuevo);      break; 
                case "Vegetales":Tienda.Vegetales.add(nuevo);    break;
                case "Legumbres":Tienda.Legumbres.add(nuevo);    break;
                case "Tuberculos":Tienda.Tubérculos.add(nuevo);  break;
                case "Semillas":Tienda.Semillas.add(nuevo);      break;
                case "Hortalizas":Tienda.Hortalizas.add(nuevo);  break;
            }
        }
    }
        
    public static boolean agregarProducto(String nombre, String precio, String unidad, String categoria, String img){
        Contador obtenerContador = new Contador();
        int idProducto = obtenerContador.obtenerIdProducto();
        AgregarProducto agregarProducto = new AgregarProducto();
        int newIdProducto = idProducto + 1;
        obtenerContador.incrementarIdProducto(newIdProducto);
        return agregarProducto.crearProducto(nombre, precio, unidad, categoria, img, idProducto);
    }
    
    public ArrayList<ObjetoTienda> consultarProductos(){
        Contador obtenerContador = new Contador();
        int idProducto = obtenerContador.obtenerIdProducto()-1;
        ObtenerProductos obtenerProductos = new ObtenerProductos();
        return obtenerProductos.consultarProductos(idProducto);
        
    }
    
    public static ArrayList<Orden> consultarOrdenes(){
        ContadorOrden contador = new ContadorOrden();
        int idOrden = contador.obtenerIdOrden()-1;
        ConsultarOrden consultarOrden = new ConsultarOrden();
        List<Orden> x = consultarOrden.obtenerOrdenes(idOrden);
        return consultarOrden.obtenerOrdenes(idOrden);
    }
}
