<%-- 
    Document   : data3
    Created on : 6/12/2024, 7:58:51 p. m.
    Author     : GABRIEL-ROMERO
--%>

<%@ page import="java.sql.*" %>
<%@ page contentType="application/json;charset=UTF-8" %>
<%
    String url = "jdbc:mysql://localhost:3306/energymanagement";
    String usuarioDB = "root";
    String claveDB = "";

    response.setContentType("application/json");

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

        out.print("[");
        boolean first = true;
        while (rs.next()) {
            if (!first) out.print(",");
            out.print("{");
            out.print("\"name\":\"" + rs.getString("name") + "\",");
            out.print("\"maxProduction\":" + rs.getDouble("max_production") + ",");
            out.print("\"minProduction\":" + rs.getDouble("min_production") + ",");
            out.print("\"avgProduction\":" + rs.getDouble("avg_production") + ",");
            out.print("\"maxConsumption\":" + rs.getDouble("max_consumption") + ",");
            out.print("\"minConsumption\":" + rs.getDouble("min_consumption") + ",");
            out.print("\"avgConsumption\":" + rs.getDouble("avg_consumption"));
            out.print("}");
            first = false;
        }
        out.print("]");

        rs.close();
        stmt.close();
        conn.close();
    } catch (Exception e) {
        e.printStackTrace();
    }
%>