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

        // Consulta SQL para obtener el promedio de consumo por año
        String sql = "SELECT year, AVG(CAST(consumption AS DECIMAL)) AS average_consumption " +
                     "FROM energydata " +
                     "GROUP BY year " +
                     "ORDER BY year;";

        ResultSet rs = stmt.executeQuery(sql);

        // Iniciar el arreglo JSON
        out.print("[");

        boolean first = true;
        while (rs.next()) {
            if (!first) out.print(",");  // Coloca la coma solo entre objetos
            out.print("{");
            out.print("\"year\":" + rs.getInt("year") + ",");
            out.print("\"averageConsumption\":" + rs.getDouble("average_consumption"));
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
