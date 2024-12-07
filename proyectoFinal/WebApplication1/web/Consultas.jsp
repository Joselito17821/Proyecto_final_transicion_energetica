<%@ page import="java.sql.*,java.util.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Consultas de Energía</title>
</head>
<body>
<h1>Consultas de Energía</h1>

<!-- Consulta inicial: Mostrar todas las fuentes de energía -->
<h2>1. Fuentes de Energía</h2>
<table border="1">
    <thead>
    <tr>
        <th>ID</th>
        <th>Nombre</th>
        <th>Descripción</th>
    </tr>
    </thead>
    <tbody>
    <%
        String url = "jdbc:mysql://localhost:3306/energymanagement";
        String usuarioDB = "root";
        String claveDB = "";

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection(url, usuarioDB, claveDB);
            Statement stmt = conn.createStatement();

            // Consulta 1: Mostrar todas las fuentes de energía
            String sql1 = "SELECT * FROM energysource";
            ResultSet rs1 = stmt.executeQuery(sql1);

            while (rs1.next()) {
                int id = rs1.getInt("id");
                String name = rs1.getString("name");
                String description = rs1.getString("description");
    %>
    <tr>
        <td><%= id %></td>
        <td><%= name %></td>
        <td><%= description %></td>
    </tr>
    <%
            }
            rs1.close();
    %>
    </tbody>
</table>

<!-- Consulta inicial: Mostrar todos los datos de energía -->
<h2>2. Datos de Energía</h2>
<table border="1">
    <thead>
    <tr>
        <th>Fuente</th>
        <th>Año</th>
        <th>Producción</th>
        <th>Consumo</th>
    </tr>
    </thead>
    <tbody>
    <%
            // Consulta 2: Mostrar todos los datos de energía
            String sql2 = "SELECT * FROM energydata";
            ResultSet rs2 = stmt.executeQuery(sql2);

            while (rs2.next()) {
                int sourceId = rs2.getInt("source_id");
                int year = rs2.getInt("year");
                double production = rs2.getDouble("production");
                double consumption = rs2.getDouble("consumption");
    %>
    <tr>
        <td><%= sourceId %></td>
        <td><%= year %></td>
        <td><%= production %></td>
        <td><%= consumption %></td>
    </tr>
    <%
            }
            rs2.close();
    %>
    </tbody>
</table>

<!-- Consulta: Producción y Consumo -->
<h2>3. Producción y Consumo (Máximo, Mínimo, Promedio) por Fuente</h2>
<table border="1">
    <thead>
    <tr>
        <th>Fuente</th>
        <th>Producción Máxima</th>
        <th>Producción Mínima</th>
        <th>Producción Promedio</th>
        <th>Consumo Máximo</th>
        <th>Consumo Mínimo</th>
        <th>Consumo Promedio</th>
    </tr>
    </thead>
    <tbody>
    <%
            String sql3 = "SELECT es.name, MAX(ed.production) AS max_production, MIN(ed.production) AS min_production, AVG(ed.production) AS avg_production, MAX(ed.consumption) AS max_consumption, MIN(ed.consumption) AS min_consumption, AVG(ed.consumption) AS avg_consumption FROM energydata ed JOIN energysource es ON es.id = ed.source_id GROUP BY ed.source_id";
            ResultSet rs3 = stmt.executeQuery(sql3);

            while (rs3.next()) {
                String name = rs3.getString("name");
                double maxProduction = rs3.getDouble("max_production");
                double minProduction = rs3.getDouble("min_production");
                double avgProduction = rs3.getDouble("avg_production");
                double maxConsumption = rs3.getDouble("max_consumption");
                double minConsumption = rs3.getDouble("min_consumption");
                double avgConsumption = rs3.getDouble("avg_consumption");
    %>
    <tr>
        <td><%= name %></td>
        <td><%= maxProduction %></td>
        <td><%= minProduction %></td>
        <td><%= avgProduction %></td>
        <td><%= maxConsumption %></td>
        <td><%= minConsumption %></td>
        <td><%= avgConsumption %></td>
    </tr>
    <%
            }
            rs3.close();
    %>
    </tbody>
</table>

<!-- Consulta: Año con Mayor Producción -->
<h2>4. Año con Mayor Producción por Fuente</h2>
<table border="1">
    <thead>
    <tr>
        <th>Fuente</th>
        <th>Año</th>
        <th>Producción</th>
    </tr>
    </thead>
    <tbody>
    <%
            String sql4 = "SELECT es.name, year, ed.production FROM energydata ed JOIN energysource es ON es.id = ed.source_id WHERE (ed.source_id, ed.production) IN (SELECT source_id, MAX(ed.production) FROM energydata ed JOIN energysource es ON es.id = ed.source_id GROUP BY ed.source_id)";
            ResultSet rs4 = stmt.executeQuery(sql4);

            while (rs4.next()) {
                String name = rs4.getString("name");
                int year = rs4.getInt("year");
                double production = rs4.getDouble("production");
    %>
    <tr>
        <td><%= name %></td>
        <td><%= year %></td>
        <td><%= production %></td>
    </tr>
    <%
            }
            rs4.close();
    %>
    </tbody>
</table>

<!-- Consulta: Consumo Promedio por Año -->
<h2>5. Consumo Promedio por Año</h2>
<table border="1">
    <thead>
    <tr>
        <th>Año</th>
        <th>Consumo Promedio</th>
    </tr>
    </thead>
    <tbody>
    <%
            String sql5 = "SELECT year, AVG(CAST(consumption AS DECIMAL)) AS average_consumption FROM energydata GROUP BY year ORDER BY year";
            ResultSet rs5 = stmt.executeQuery(sql5);

            while (rs5.next()) {
                int year = rs5.getInt("year");
                double avgConsumption = rs5.getDouble("average_consumption");
    %>
    <tr>
        <td><%= year %></td>
        <td><%= avgConsumption %></td>
    </tr>
    <%
            }
            rs5.close();
    %>
    </tbody>
</table>

<!-- Consulta: Fuente con Mayor Producción Total -->
<h2>6. Fuente con Mayor Producción Total</h2>
<table border="1">
    <thead>
    <tr>
        <th>Fuente</th>
        <th>Producción Total</th>
    </tr>
    </thead>
    <tbody>
    <%
            String sql6 = "SELECT es.name, SUM(ed.production) AS total_production FROM energydata ed JOIN energysource es ON es.id = ed.source_id GROUP BY ed.source_id ORDER BY total_production DESC LIMIT 1";
            ResultSet rs6 = stmt.executeQuery(sql6);

            while (rs6.next()) {
                String name = rs6.getString("name");
                double totalProduction = rs6.getDouble("total_production");
    %>
    <tr>
        <td><%= name %></td>
        <td><%= totalProduction %></td>
    </tr>
    <%
            }
            rs6.close();
    %>
    </tbody>
</table>

<!-- Consulta: Diferencia entre Producción Máxima y Mínima -->
<h2>7. Diferencia entre Producción Máxima y Mínima por Fuente</h2>
<table border="1">
    <thead>
    <tr>
        <th>Fuente</th>
        <th>Diferencia</th>
    </tr>
    </thead>
    <tbody>
    <%
            String sql7 = "SELECT es.name, MAX(ed.production) - MIN(ed.production) AS production_difference FROM energydata ed JOIN energysource es ON es.id = ed.source_id GROUP BY ed.source_id, es.name";
            ResultSet rs7 = stmt.executeQuery(sql7);

            while (rs7.next()) {
                String name = rs7.getString("name");
                double difference = rs7.getDouble("production_difference");
    %>
    <tr>
        <td><%= name %></td>
        <td><%= difference %></td>
    </tr>
    <%
            }
            rs7.close();
    %>
    </tbody>
</table>

<!-- Consulta: Fuente con Mayor Consumo Relativo -->
<h2>8. Fuente con Mayor Consumo Relativo</h2>
<table border="1">
    <thead>
    <tr>
        <th>Fuente</th>
        <th>Consumo Relativo</th>
    </tr>
    </thead>
    <tbody>
    <%
            String sql8 = "SELECT es.name, MAX(ed.consumption) / MAX(ed.production) AS relative_consumption FROM energydata ed JOIN energysource es ON es.id = ed.source_id GROUP BY ed.source_id, es.name ORDER BY relative_consumption DESC LIMIT 1";
            ResultSet rs8 = stmt.executeQuery(sql8);

            while (rs8.next()) {
                String name = rs8.getString("name");
                double relativeConsumption = rs8.getDouble("relative_consumption");
    %>
    <tr>
        <td><%= name %></td>
        <td><%= relativeConsumption %></td>
    </tr>
    <%
            }
            rs8.close();

            stmt.close();
            conn.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    %>
    </tbody>
</table>
</body>
</html>
