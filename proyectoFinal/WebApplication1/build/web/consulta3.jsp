<%@ page import="java.sql.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Producción y Consumo por Fuente</title>
</head>
<body>
<table border="1">
    <thead>
    <tr>
        <th>Fuente de Energía</th>
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
        String url = "jdbc:mysql://localhost:3306/energymanagement";
        String usuarioDB = "root";
        String claveDB = "";

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection(url, usuarioDB, claveDB);
            Statement stmt = conn.createStatement();

            String sql = "SELECT es.name, " +
                         "MAX(ed.production) AS max_production, " +
                         "MIN(ed.production) AS min_production, " +
                         "AVG(ed.production) AS avg_production, " +
                         "MAX(ed.consumption) AS max_consumption, " +
                         "MIN(ed.consumption) AS min_consumption, " +
                         "AVG(ed.consumption) AS avg_consumption " +
                         "FROM energydata ed " +
                         "JOIN energysource es ON es.id = ed.source_id " +
                         "GROUP BY ed.source_id";
            ResultSet rs = stmt.executeQuery(sql);

            while (rs.next()) {
                String name = rs.getString("name");
                double maxProduction = rs.getDouble("max_production");
                double minProduction = rs.getDouble("min_production");
                double avgProduction = rs.getDouble("avg_production");
                double maxConsumption = rs.getDouble("max_consumption");
                double minConsumption = rs.getDouble("min_consumption");
                double avgConsumption = rs.getDouble("avg_consumption");
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
            rs.close();
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
