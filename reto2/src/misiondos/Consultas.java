/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package misiondos;
import java.sql.*;
/**
 *
 * @author EQUIPO 9
 */
public class Consultas {
    //Metodod agregar datos a la tabla
    public static void adicionarFuenteEnergia(String name, String descripcion){
        String sql = "INSERT INTO energysource (name, description) VALUES (?,?)";
        try(Connection connection = DBConexion.connect();
            PreparedStatement statement = connection.prepareStatement(sql);){
            statement.setString(1, name);
            statement.setString(2, descripcion);
            int filasAfectadas = statement.executeUpdate();
            if(filasAfectadas>0){
                System.out.println("Fuente de energía añadida correctamente.");
            }else{
                System.out.println("Error: Enegia no Añadida");
            }
            
        }catch (SQLException e) {
            System.err.println("Error en la conexion: " + e.getMessage());
        }      
    }
    
    //Metodo Elimiar Fuentes de Enegia
    public static void eliminarFuenteEnergiaPorId(int id) {
    String sql = "DELETE FROM energysource WHERE id = ?";
    try (Connection connection = DBConexion.connect();
         PreparedStatement statement = connection.prepareStatement(sql)) {
        
            // Establecer el parámetro del ID
            statement.setInt(1, id);

            // Ejecutar la consulta
            int filasAfectadas = statement.executeUpdate();

            // Verificar el resultado
            if (filasAfectadas > 0) {
                System.out.println("Fuente de energía eliminada correctamente.");
            }else {
                System.out.println("No se encontró ninguna fuente de energía con el ID proporcionado.");
                }
            }catch (SQLException e) {
                System.err.println("Error en la conexion: " + e.getMessage());
            }
    }
    
    //Metodo actualizar datos de Energia tabla
    public static void actualizarDatosEnergia(double production, double consumption, int id){
        String sql = "UPDATE EnergyData SET production = ?, consumption = ? "
                + "WHERE id = ?";
        try(Connection connection = DBConexion.connect();
            PreparedStatement statement = connection.prepareStatement(sql)){
            statement.setDouble(1,production);
            statement.setDouble(2,consumption);
            statement.setInt(3,id);
            int filasafectadas = statement.executeUpdate();
            if(filasafectadas > 0){
                System.out.println("Datos Energia Actualizados Correctamente");
            }  
        }catch (SQLException e) {
            System.err.println("Error en la conexion: " + e.getMessage());
            } 
    }
    
    
    //Consultar Datos de Energia
    public static void consultarDatosEnergia(){
        String sql = "SELECT * FROM EnergyData";
        try (Connection connection = DBConexion.connect();
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet resultado = statement.executeQuery();) {
            
            while(resultado.next()){
                int id = resultado.getInt("id");
                int source_id = resultado.getInt("source_id");
                int year = resultado.getInt("year");
                double production = resultado.getInt("production");
                double consumption = resultado.getInt("consumption");
                
                System.out.printf("ID: %d | Fuente Energia: %d | Año: %d | Produccion: %.2f | Consumo: %.2f%n",id,source_id,year,production,consumption);
            }
            
        }catch (SQLException e) {
            System.err.println("Error en la conexion: " + e.getMessage());
        }
    }
    
    //Metodo promedio energía
    public static void promedioDatosEnergia(){
        String sql = "SELECT ed.id, es.name, ed.year, AVG(ed.production) "
                + "AS promedio_produccion, AVG(ed.consumption) "
                + "AS promedio_consumo FROM EnergyData ed "
                + "JOIN EnergySource es ON ed.source_id = es.id "
                + "GROUP BY es.name ORDER BY ed.id ASC";
        try(Connection connection = DBConexion.connect();
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet resultado = statement.executeQuery();){
            
            while(resultado.next()){ // id, source_id, year, production, comsuption
                String NombreFuente = resultado.getString("name");
                double PromProduccion = resultado.getDouble("promedio_produccion");
                double Promconsumo = resultado.getDouble("promedio_consumo");
                System.out.printf("Name: %s | Producion: %.2f | Consumo: %.2f%n",NombreFuente,PromProduccion,Promconsumo);
            } 
        }catch (SQLException e) {
            System.err.println("Error en la conexion: " + e.getMessage());
        } 
    }
    
    
    //Metodo agregar datos de energia a energydata
    public static void adicionarDatosEnergia(int id_source, int year, double production, double consumption){
        String sql = "INSERT INTO energydata (id_source, year, production, consumption) VALUES (?,?,?,?)";
        try(Connection connection = DBConexion.connect();
            PreparedStatement statement = connection.prepareStatement(sql);){
            statement.setInt(1, id_source);
            statement.setInt(2, year);
            statement.setDouble(3, production);
            statement.setDouble(4, consumption);
            int filasAfectadas = statement.executeUpdate();
            if(filasAfectadas>0){
                System.out.println("Datos de energía añadidos correctamente.");
            }else{
                System.out.println("Error:Datos Enegia no Añadidos");
            }
            
        }catch (SQLException e) {
            System.err.println("Error en la conexion: " + e.getMessage());
        }      
    }
    
    //Metodo Eliminar Datos Energia
    public static void eliminarDatosEnergiaPorId(int id) {
    String sql = "DELETE FROM energydata WHERE id = ?";
    try (Connection connection = DBConexion.connect();
         PreparedStatement statement = connection.prepareStatement(sql)) {
        
            // Establecer el parámetro del ID
            statement.setInt(1, id);

            // Ejecutar la consulta
            int filasAfectadas = statement.executeUpdate();

            // Verificar el resultado
            if (filasAfectadas > 0) {
                System.out.println("Dato de energía eliminada correctamente.");
            }else {
                System.out.println("No se encontró ningun dato de energía con el ID proporcionado.");
                }
            }catch (SQLException e) {
                System.err.println("Error en la conexion: " + e.getMessage());
            }
    }
    
    //3. Actualizar Fuente Energia //Energysource
    public static void actualizarFuenteEnergia(String name, String description, int id){
        String sql = "UPDATE energysource SET name = ?, description = ?"
                + "WHERE id = ?";
        try(Connection connection = DBConexion.connect();
            PreparedStatement statement = connection.prepareStatement(sql)){
            statement.setString(1,name);
            statement.setString(2,description);
            statement.setInt(3,id);
            int filasafectadas = statement.executeUpdate();
            if(filasafectadas > 0){
                System.out.println("Datos Energia Actualizados Correctamente");
            }  
        }catch(SQLException e){
            e.printStackTrace();
        }
    }
    
    
    //4. Ver Fuentes Energia //Energysource
    //Metodo consultar datos tabla
    public static void consultarFuenteEnergia(){
        String sql = "SELECT * FROM energysource";
        try(Connection connection = DBConexion.connect();
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet resultado = statement.executeQuery();){
            
            while(resultado.next()){ // id, name, description
                int id = resultado.getInt("id");
                String name = resultado.getString("name");
                String description  = resultado.getString("description");
                System.out.printf("ID: %d | Fuente Energia: %s | Descripción: %s%n", id, name,description);
            } 
        }catch(SQLException e){
            e.printStackTrace();
        }  
    } 


    
    //CONSULTAS DE ESTADISTICAS
    //Produccion y consumo Maximo, Minimo y Promedio por Fuente de Energia
    public static void consulta1(){
        String sql = "SELECT es.name, " +
                    "MAX(ed.production) AS max_production, " +
                    "MIN(ed.production) AS min_production, " +
                    "AVG(ed.production) AS avg_production, " +
                    "MAX(ed.consumption) AS max_consumption, " +
                    "MIN(ed.consumption) AS min_consumption, " +
                    "AVG(ed.consumption) AS avg_consumption " +
                    "FROM energydata ed " +
                    "JOIN energysource es ON es.id = ed.source_id " +
                    "GROUP BY ed.source_id;";
        
        try(Connection connection = DBConexion.connect();
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet resultado = statement.executeQuery();){
            
            while(resultado.next()){ // id, source_id, year, production, comsuption
                String NombreFuente = resultado.getString("name");
                double maxProduccion = resultado.getDouble("max_production");
                double minProduccion = resultado.getDouble("min_production");
                double avgProduccion = resultado.getDouble("avg_production");
                double maxconsumo = resultado.getDouble("max_consumption");
                double minconsumo = resultado.getDouble("min_consumption");
                double avgconsumo = resultado.getDouble("avg_consumption");
                System.out.printf("Nombre: %s | Max_Produccion: %.2f | Min_Produccion: %.2f | Promedio_Produccion: %.2f | Max_Consumo: %.2f | Min_Consumo: %.2f | Promedio_Consumo: %.2f%n",NombreFuente, maxProduccion, minProduccion, avgProduccion, maxconsumo, minconsumo, avgconsumo);
            } 
        }catch (SQLException e) {
            System.err.println("Error en la conexion: " + e.getMessage());
        } 
    }
    
    
    //Año con la mayor produccion por fuente de energia
    public static void consulta2(){
        String sql = "SELECT es.name, year, ed.production " +
                    "FROM energydata ed " +
                    "JOIN energysource es ON es.id = ed.source_id " +
                    "WHERE (ed.source_id, ed.production) IN ( " +
                    "    SELECT source_id, MAX(ed.production) " +
                    "    FROM energydata ed " +
                    "    JOIN energysource es ON es.id = ed.source_id " +
                    "    GROUP BY ed.source_id " +
                    ");";
        
        try(Connection connection = DBConexion.connect();
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet resultado = statement.executeQuery();){
            
            while(resultado.next()){ // id, source_id, year, production, comsuption
                String NombreFuente = resultado.getString("name");
                int anio = resultado.getInt("year");
                double produccion = resultado.getDouble("production");
                
                System.out.printf("Nombre: %s | Año: %d | Produccion: %.2f%n ",NombreFuente, anio, produccion);
            } 
        }catch (SQLException e) {
            System.err.println("Error en la conexion: " + e.getMessage());
        } 
    }
    
    
    // Consulta 3: Consumo Promedio Por Año
    public static void consulta3(){
        String sql =  "SELECT year, " +
                    "AVG(CAST(consumption AS DECIMAL)) AS average_consumption " +
                    "FROM energydata " +
                    "GROUP BY year " +
                    "ORDER BY year;";

        
        try(Connection connection = DBConexion.connect();
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet resultado = statement.executeQuery();){
            
            while(resultado.next()){ // id, source_id, year, production, comsuption
               
                int anio = resultado.getInt("year");
                double consumoPromedio = resultado.getDouble("average_consumption");
                System.out.printf("Año: %d | Consumo_Promedio: %.2f%n ",anio, consumoPromedio);
            } 
        }catch (SQLException e) {
            System.err.println("Error en la conexion: " + e.getMessage());
        } 
    }
    
    
    
    // Consulta 4: Fuente de energía con la mayor producción total
    public static void consulta4() {
        String sql = "SELECT es.name, " +
                     "SUM(ed.production) AS total_production " +
                     "FROM energydata ed " +
                     "JOIN energysource es ON es.id = ed.source_id " +
                     "GROUP BY ed.source_id " +
                     "ORDER BY total_production DESC " +
                     "LIMIT 1;";

        try (Connection connection = DBConexion.connect();
             PreparedStatement statement = connection.prepareStatement(sql);
             ResultSet resultado = statement.executeQuery()) {

            if (resultado.next()) { // Solo esperamos un resultado debido a LIMIT 1
                String nombreFuente = resultado.getString("name");
                double totalProduccion = resultado.getDouble("total_production");

                System.out.printf("Fuente de Energía: %s | Producción Total: %.2f%n", nombreFuente, totalProduccion);
            } else {
                System.out.println("No se encontraron datos.");
            }
        } catch (SQLException e) {
            System.err.println("Error en la conexión: " + e.getMessage());
        }
    }

    
    
    //Diferencia entre produccion Maxima y Minima por Año
    public static void consulta5(){
        String sql =  "SELECT es.name, " +
               "MAX(ed.production) - MIN(ed.production) AS production_difference " +
               "FROM energydata ed " +
               "JOIN energysource es ON es.id = ed.source_id " +
               "GROUP BY ed.source_id, es.name;";

        try(Connection connection = DBConexion.connect();
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet resultado = statement.executeQuery();){
            
            while(resultado.next()){ // id, source_id, year, production, comsuption
                String NombreFuente = resultado.getString("name");
                double diferenciaProduccion = resultado.getDouble("production_difference");
                
                System.out.printf("Nombre: %s | Diferencia Produccion: %.2f%n ",NombreFuente, diferenciaProduccion);
            } 
        }catch (SQLException e) {
            System.err.println("Error en la conexion: " + e.getMessage());
        } 
    }
    
    
    
    //Fuente con Mayor Consumo Relativo
    public static void consulta6(){
        String sql =  "SELECT es.name, " +
               "MAX(ed.consumption) / MAX(ed.production) AS relative_consumption " +
               "FROM energydata ed " +
               "JOIN energysource es ON es.id = ed.source_id " +
               "GROUP BY ed.source_id, es.name " +
               "ORDER BY relative_consumption DESC " +
               "LIMIT 1;";

        try(Connection connection = DBConexion.connect();
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet resultado = statement.executeQuery();){
            
            while(resultado.next()){ // id, source_id, year, production, comsuption
                String NombreFuente = resultado.getString("name");
                double consumoRelativo = resultado.getDouble("relative_consumption");
                
                System.out.printf("Nombre: %s | Consumo Relativo: %.2f%n ",NombreFuente, consumoRelativo);
            } 
        }catch (SQLException e) {
            System.err.println("Error en la conexion: " + e.getMessage());
        } 
    }
    

}
