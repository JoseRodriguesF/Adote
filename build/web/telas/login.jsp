<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>

<%
    String user = request.getParameter("usuario");
    String pass = request.getParameter("senha");

    // Configuração do banco de dados
    String url = "jdbc:mysql://localhost:3306/adote?useSSL=false&serverTimezone=UTC"; // Substitua pelo nome correto do seu BD
    String dbUser = "root"; // Usuário do MySQL
    String dbPass = "root"; // Senha do MySQL

    boolean loginValido = false;

    // Verifica se o login é de admin
    if ("admin".equals(user) && "admin".equals(pass)) {
        response.sendRedirect("cadastroCaes.jsp"); // Redireciona para a página de admin
        return;
    }

    // Verifica se o login é de um usuário cadastrado
    if (user != null && pass != null) {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver"); // Certifique-se de ter o driver MySQL no servidor
            Connection conn = DriverManager.getConnection(url, dbUser, dbPass);
            
            String sql = "SELECT * FROM usuarios WHERE nome = ? AND senha = ?";
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1, user);
            stmt.setString(2, pass);
            
            ResultSet rs = stmt.executeQuery();
            
            if (rs.next()) {
                loginValido = true;
            }
            
            rs.close();
            stmt.close();
            conn.close();
        } catch (Exception e) {
            out.println("<p style='color:red;'>Erro ao conectar ao banco de dados!</p>");
            e.printStackTrace();
        }
    }

    if (loginValido) {
        response.sendRedirect("listaCaesUser.jsp"); // Página de usuários normais
    } else if (user != null || pass != null) {
        out.println("<p style='color:red;'>Usuário ou senha incorretos!</p>");
    }
%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login - Admin</title>
    </head>
    <body>
        <form action="login.jsp" method="post">
            <h1>Login</h1>
            <label>Usuário:</label>
            <input type="text" name="usuario" required><br>

            <label>Senha:</label>
            <input type="password" name="senha" required><br>

            <button type="submit">Entrar</button>
        </form>
    </body>
</html>