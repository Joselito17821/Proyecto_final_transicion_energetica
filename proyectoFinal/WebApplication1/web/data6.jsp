<%@ page import="java.sql.*" %>
<%@ page contentType="application/json;charset=UTF-8" %>
<%
    String url = "jdbc:mysql://localhost:3306/energymanagement";
    String usuarioDB = "root";
    String claveDB = "";

    // Establecer el tipo de contenido como JSON
    response.setContentType("application/json");

    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection conn = DriverManager.getConnection(url, usuarioDB, claveDB);
        Statement stmt = conn.createStatement();

        // Consulta SQL para obtener el consumo relativo máximo
        String sql = "SELECT es.name, " +
                     "MAX(ed.consumption) / MAX(ed.production) AS relative_consumption " +
                     "FROM energydata ed " +
                     "JOIN energysource es ON es.id = ed.source_id " +
                     "GROUP BY ed.source_id, es.name " +
                     "ORDER BY relative_consumption DESC " +
                     "LIMIT 1;";

        ResultSet rs = stmt.executeQuery(sql);

        // Iniciar el arreglo JSON
        out.print("[");

        if (rs.next()) {
            out.print("{");
            out.print("\"name\":\"" + rs.getString("name") + "\",");
            out.print("\"relativeConsumption\":" + rs.getDouble("relative_consumption"));
            out.print("}");
        }

        // Cerrar el arreglo JSON
        out.print("]");

        // Cerrar la conexión a la base de datos
        rs.close();
        stmt.close();
        conn.close();
    } catch (Exception e) {
        e.printStackTrace();
    }
%>
