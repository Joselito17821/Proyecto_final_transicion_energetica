<%@ page import="java.sql.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Diferencia de Producción Máxima y Mínima por Año</title>
</head>
<body>
<table border="1">
    <thead>
    <tr>
        <th>Fuente de Energía</th>
        <th>Diferencia de Producción</th>
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
                         "MAX(ed.production) - MIN(ed.production) AS production_difference " +
                         "FROM energydata ed " +
                         "JOIN energysource es ON es.id = ed.source_id " +
                         "GROUP BY ed.source_id, es.name;";
            ResultSet rs = stmt.executeQuery(sql);

            while (rs.next()) {
                String name = rs.getString("name");
                double productionDifference = rs.getDouble("production_difference");
    %>
    <tr>
        <td><%= name %></td>
        <td><%= productionDifference %></td>
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
