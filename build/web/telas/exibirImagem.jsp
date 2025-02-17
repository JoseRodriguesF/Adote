<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>

<%
    String idCao = request.getParameter("id");
    String url = "jdbc:mysql://localhost:3306/adote?useSSL=false&serverTimezone=UTC";
    String usuario = "root";
    String senha = "root";

    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection conexao = DriverManager.getConnection(url, usuario, senha);

        String sql = "SELECT imagem FROM imagem WHERE id = ?";
        PreparedStatement stmt = conexao.prepareStatement(sql);
        stmt.setString(1, idCao);
        ResultSet rs = stmt.executeQuery();

        if (rs.next()) {
            byte[] imgData = rs.getBytes("imagem");
            response.setContentType("image/jpeg");
            OutputStream outStream = response.getOutputStream();
            outStream.write(imgData);
            outStream.flush();
            outStream.close();
        }
        conexao.close();
    } catch (Exception e) {
        out.println("<p style='color:red;'>Erro ao carregar imagem: " + e.getMessage() + "</p>");
    }
%>