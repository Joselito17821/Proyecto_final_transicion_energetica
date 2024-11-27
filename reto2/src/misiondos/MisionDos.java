/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package misiondos;
import java.sql.*;
import java.util.Scanner;
/**
 *
 * @author EQUIPO 9
 */
public class MisionDos {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        
        // TODO code application logic here
        //Connection connection = DBConexion.connect();
        //Consultas.adicionarFuenteEnergia("Mareomotriz","Energia generada por el movimiento de las olas");
        //Consultas.actualizarDatosEnergia(23, 22, 4);
        //Consultas.eliminarFuenteEnergiaPorId(12);
        
        Scanner scanner = new Scanner(System.in);
        boolean cicloMenu = true;
        while(cicloMenu){
            System.out.print("""
                               ******** MENU CRUD SQL y JAVA ********
                               1. Adicionar Fuente Energia
                               2. Eliminar Fuente Energia
                               3. Actualizar Fuente Energia 
                               4. Ver Fuentes Energia 
                               5. Adicionar Datos Energia 
                               6. Eliminar Datos Energia 
                               7. Actualizar Datos Energia
                               8. Ver Datos Energia 
                               9. Promedio Datos Energia
                               10. CONSULTA 1(Maximo y Minimos)
                               11. CONSULTA 2(Año Mayor Produccion) 
                               12. CONSULTA 3(Consumo Promedio Año)
                               13. CONSULTA 4(Fuente Total Produccion)
                               14. CONSULTA 5(Diferencia Min y Max)
                               15. CONSULTA 6 (Fuente Consumo Relativo)
                               16. Salir
                               Seleccione una opcion: """);
            
            int opcion = scanner.nextInt();
            
            switch (opcion){
                
                case 1:
                    System.out.println("Ingrese nombre de la fuente: ");
                    scanner.nextLine(); // Limpia el buffer del Scanner
                    String name = scanner.nextLine();
                    System.out.println("Ingrese la descripcion: ");
                    String descripcion = scanner.nextLine();
                    Consultas.adicionarFuenteEnergia(name,descripcion);
                    break;
                
                case 2:
                    System.out.println("Ingrese el id de la fuente: ");
                    int eliminarid = scanner.nextInt();
                    Consultas.eliminarFuenteEnergiaPorId(eliminarid);
                    break;
                
                case 3:
                    System.out.println("Ingrese nombre de fuente de energia: ");
                    scanner.nextLine();
                    String namef = scanner.nextLine();
                    System.out.println("Ingrese descrición de fuente de energia: ");
                    String descriptionf = scanner.nextLine();
                    System.out.println("Ingrese el id: ");
                    int actualizaridf = scanner.nextInt();
                    Consultas.actualizarFuenteEnergia(namef,descriptionf,actualizaridf);
                    break;
                    
                case 4: 
                    Consultas.consultarFuenteEnergia();
                    System.out.println("Datos Tabla EnergyData");
                    break;
                    
                case 5:
                    System.out.println("Ingrese el id de la fuente de Energia: ");
                    int ingresaridsource = scanner.nextInt();
                    System.out.println("Ingrese el año de los Datos de Energia: ");
                    int ingresaranio = scanner.nextInt();
                    System.out.println("Ingrese dato de produccion: ");
                    Double ingresarproduccion = scanner.nextDouble();
                    System.out.println("Ingrese dato de consumo: ");
                    Double ingresarconsumo = scanner.nextDouble();
                    Consultas.adicionarDatosEnergia(ingresaridsource, ingresaranio, ingresarproduccion, ingresarconsumo);
                    break;
                    
                case 6:
                    System.out.println("Ingrese el id deL Dato de Enegia: ");
                    int eliminariddatos = scanner.nextInt();
                    Consultas.eliminarDatosEnergiaPorId(eliminariddatos);
                    break;
                
                case 7:
                   System.out.println("Ingrese dato de produccion: ");
                   Double produccion = scanner.nextDouble();
                   System.out.println("Ingrese dato de consumo: ");
                   Double consumo = scanner.nextDouble();
                   System.out.println("Ingrese el id: ");
                   int actualizarid = scanner.nextInt();
                   Consultas.actualizarDatosEnergia(produccion, consumo, actualizarid);
                   break;
                   
                case 8:
                    Consultas.consultarDatosEnergia();
                    break;
                    
                case 9:
                    Consultas.promedioDatosEnergia();
                    break;
                    
                case 10:
                    Consultas.consulta1();
                    break;
                    
                case 11:
                    Consultas.consulta2();
                    break;
                    
                case 12:
                    Consultas.consulta3();
                    break;
                    
                case 13:
                    Consultas.consulta4();
                    break;
                    
                case 14:
                    Consultas.consulta5();
                    break;
                    
                case 15:
                    Consultas.consulta6();
                    break;
                    
                case 16:
                    cicloMenu = false;
                    break;
                    
                default:
                    System.out.println("Opcion no valida");
                    break;
                    
            }  
            
        }
    }
    
}
