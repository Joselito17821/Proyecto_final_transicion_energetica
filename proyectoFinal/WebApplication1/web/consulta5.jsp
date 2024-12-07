<%@ page import="java.sql.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Consumo Promedio por Año</title>
</head>
<body>
<table border="1">
    <thead>
    <tr>
        <th>Año</th>
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

            String sql = "SELECT year, AVG(CAST(consumption AS DECIMAL)) AS average_consumption FROM energydata " +
                         "GROUP BY year " +
                         "ORDER BY year;";
            ResultSet rs = stmt.executeQuery(sql);

            while (rs.next()) {
                int year = rs.getInt("year");
                double averageConsumption = rs.getDouble("average_consumption");
    %>
    <tr>
        <td><%= year %></td>
        <td><%= averageConsumption %></td>
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
