<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>

<%
    String nome = request.getParameter("nome");
    String senha = request.getParameter("senha");

    // Configuração do banco de dados
    String url = "jdbc:mysql://localhost:3306/adote?useSSL=false&serverTimezone=UTC";
    String dbUser = "root";
    String dbPass = "root";

    boolean usuarioExiste = false;

    if (nome != null && senha != null) {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection(url, dbUser, dbPass);

            // Verifica se o nome já está cadastrado
            String checkUserSql = "SELECT * FROM usuarios WHERE nome = ?";
            PreparedStatement checkStmt = conn.prepareStatement(checkUserSql);
            checkStmt.setString(1, nome);
            ResultSet rs = checkStmt.executeQuery();

            if (rs.next()) {
                usuarioExiste = true;
            }

            if (!usuarioExiste) {
                // Insere o novo usuário (somente nome e senha)
                String insertSql = "INSERT INTO usuarios (nome, senha) VALUES (?, ?)";
                PreparedStatement stmt = conn.prepareStatement(insertSql);
                stmt.setString(1, nome);
                stmt.setString(2, senha);
                stmt.executeUpdate();

                stmt.close();
                conn.close();

                // Redireciona para a página de login
                response.sendRedirect("login.jsp");
                return;
            }

            rs.close();
            checkStmt.close();
            conn.close();

        } catch (Exception e) {
            out.println("<p style='color:red;'>Erro ao conectar ao banco de dados: " + e.getMessage() + "</p>");
        }
    }
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Registro de Usuário</title>
</head>
<body>
    <h1>Registro</h1>
    <% if (usuarioExiste) { %>
        <p style="color:red;">Este nome já está cadastrado! Tente outro.</p>
    <% } %>

    <form action="registro.jsp" method="post">
        <label>Nome:</label>
        <input type="text" name="nome" required><br>

        <label>Senha:</label>
        <input type="password" name="senha" required><br>

        <button type="submit">Registrar</button>
    </form>

    <p>Já tem uma conta? <a href="login.jsp">Faça login</a></p>
</body>
</html>