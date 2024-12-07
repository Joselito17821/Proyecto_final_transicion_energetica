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

        // Consulta SQL que selecciona el nombre de la fuente de energía, el año y la producción máxima
        String sql = "SELECT es.name, year, ed.production " +
                     "FROM energydata ed " +
                     "JOIN energysource es ON es.id = ed.source_id " +
                     "WHERE (ed.source_id, ed.production) IN ( " +
                     "SELECT source_id, MAX(ed.production) " +
                     "FROM energydata ed " +
                     "JOIN energysource es ON es.id = ed.source_id " +
                     "GROUP BY ed.source_id);";

        ResultSet rs = stmt.executeQuery(sql);

        // Iniciar el arreglo JSON
        out.print("[");

        boolean first = true;
        while (rs.next()) {
            if (!first) out.print(",");  // Coloca la coma solo entre objetos
            out.print("{");
            out.print("\"name\":\"" + rs.getString("name") + "\",");
            out.print("\"year\":" + rs.getInt("year") + ",");
            out.print("\"production\":" + rs.getDouble("production"));
            out.print("}");
            first = false;
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