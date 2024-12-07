<%@ page import="java.sql.*" %>
<%@ page contentType="application/json;charset=UTF-8" %>
<%
    String url = "jdbc:mysql://localhost:3306/energymanagement";
    String usuarioDB = "root";
    String claveDB = "";

    response.setContentType("application/json");

    try {
        // Conexión a la base de datos
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection conn = DriverManager.getConnection(url, usuarioDB, claveDB);
        Statement stmt = conn.createStatement();

        // Consulta SQL
        String sql = "SELECT id, name, description FROM energysource";
        ResultSet rs = stmt.executeQuery(sql);

        // Generación del JSON
        out.print("[");
        boolean first = true;
        while (rs.next()) {
            if (!first) out.print(",");
            out.print("{");
            out.print("\"id\":" + rs.getInt("id") + ",");
            out.print("\"name\":\"" + rs.getString("name") + "\",");
            out.print("\"description\":\"" + rs.getString("description") + "\"");
            out.print("}");
            first = false;
        }
        out.print("]");

        // Cerrar recursos
        rs.close();
        stmt.close();
        conn.close();
    } catch (Exception e) {
        e.printStackTrace();
    }
%>
