<%@ page import="java.sql.*, java.io.*, javax.servlet.*, javax.servlet.http.*" %>
<%
    String id = request.getParameter("id");
    Part filePart = request.getPart("imagem");

    if (filePart != null && filePart.getSize() > 0) {
        InputStream inputStream = filePart.getInputStream();
        String url = "jdbc:mysql://localhost:3306/adote?useSSL=false&serverTimezone=UTC";
        String usuario = "root";
        String senha = "root";

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conexao = DriverManager.getConnection(url, usuario, senha);
            String sql = "UPDATE caes SET imagem = ? WHERE id = ?";
            PreparedStatement stmt = conexao.prepareStatement(sql);
            stmt.setBlob(1, inputStream);
            stmt.setString(2, id);
            stmt.executeUpdate();
            conexao.close();
            response.sendRedirect("informacoes.jsp?id=" + id);
        } catch (Exception e) {
            out.println("<p style='color:red;'>Erro ao salvar imagem: " + e.getMessage() + "</p>");
        }
    }
%>