<%@ page import="java.sql.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Fuente con Mayor Consumo Relativo</title>
</head>
<body>
<table border="1">
    <thead>
    <tr>
        <th>Fuente de Energía</th>
        <th>Consumo Relativo</th>
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
                         "MAX(ed.consumption) / MAX(ed.production) AS relative_consumption " +
                         "FROM energydata ed " +
                         "JOIN energysource es ON es.id = ed.source_id " +
                         "GROUP BY ed.source_id, es.name " +
                         "ORDER BY relative_consumption DESC " +
                         "LIMIT 1;";
            ResultSet rs = stmt.executeQuery(sql);

            while (rs.next()) {
                String name = rs.getString("name");
                double relativeConsumption = rs.getDouble("relative_consumption");
    %>
    <tr>
        <td><%= name %></td>
        <td><%= relativeConsumption %></td>
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
