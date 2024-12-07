<%@ page import="java.sql.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Año con Mayor Producción por Fuente</title>
</head>
<body>
<table border="1">
    <thead>
    <tr>
        <th>Fuente de Energía</th>
        <th>Año</th>
        <th>Producción</th>
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

            String sql = "SELECT es.name, year, ed.production FROM energydata ed " +
                         "JOIN energysource es ON es.id = ed.source_id " +
                         "WHERE (ed.source_id, ed.production) IN ( " +
                         "SELECT source_id, MAX(ed.production) " +
                         "FROM energydata ed " +
                         "JOIN energysource es ON es.id = ed.source_id " +
                         "GROUP BY ed.source_id);";
            ResultSet rs = stmt.executeQuery(sql);

            while (rs.next()) {
                String name = rs.getString("name");
                int year = rs.getInt("year");
                double production = rs.getDouble("production");
    %>
    <tr>
        <td><%= name %></td>
        <td><%= year %></td>
        <td><%= production %></td>
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
