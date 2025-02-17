<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="java.io.*"%>
<%@page import="jakarta.servlet.http.*"%>

<%@ page language="java" %>
<%@ page import="java.nio.charset.StandardCharsets" %>

<%
    if ("POST".equalsIgnoreCase(request.getMethod())) {
        String url = "jdbc:mysql://localhost:3306/adote?useSSL=false&serverTimezone=UTC";
        String usuario = "root";
        String senha = "root";

        // Capturando os campos de texto com request.getParameter()
        String nome = request.getParameter("nome");
        String idadeStr = request.getParameter("idade");
        String porte = request.getParameter("porte");
        String cor = request.getParameter("cor");
        String genero = request.getParameter("genero");
        String raca = request.getParameter("raca");
        String descricao = request.getParameter("descricao");
        String historico_med = request.getParameter("historico_med");
        String ultima_vacina = request.getParameter("ultima_vacina");

        // Conversão segura da idade
        Integer idade = null;
        try {
            if (idadeStr != null && !idadeStr.isEmpty()) {
                idade = Integer.parseInt(idadeStr);
            }
        } catch (NumberFormatException e) {
            out.println("<p style='color:red;'>Erro: Idade inválida!</p>");
            return;
        }

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            out.println("<p style='color:red;'>Erro: Driver JDBC não encontrado!</p>");
            e.printStackTrace();
            return;
        }

        // Inserir no banco de dados
        String sql = "INSERT INTO caes (nome, idade, porte, cor, genero, raca, descricao, historico_med, ultima_vacina) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";

        try (Connection conexao = DriverManager.getConnection(url, usuario, senha);
             PreparedStatement stmt = conexao.prepareStatement(sql)) {

            stmt.setString(1, nome);
            stmt.setObject(2, idade, Types.INTEGER);
            stmt.setString(3, porte);
            stmt.setString(4, cor);
            stmt.setString(5, genero);
            stmt.setString(6, raca);
            stmt.setString(7, descricao);
            stmt.setString(8, historico_med);
            stmt.setObject(9, (ultima_vacina != null && !ultima_vacina.isEmpty()) ? ultima_vacina : null, Types.DATE);

            int resultado = stmt.executeUpdate();

            if (resultado > 0) {
                response.sendRedirect("listaCaes.jsp"); // Redireciona para a página de listagem
                return;
            } else {
                out.println("<p style='color:red;'>Erro ao cadastrar.</p>");
            }
        } catch (SQLException e) {
            out.println("<p style='color:red;'>Erro ao conectar ao banco de dados: " + e.getMessage() + "</p>");
            e.printStackTrace();
        }
    }
%>

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Cadastro de Cães</title>
</head>
<body>
    <h1>Cadastro de Cães</h1>

    <form method="post" action="cadastroCaes.jsp" autocomplete="off">
        <label>Nome:</label><br>
        <input type="text" name="nome" required><br>

        <label>Idade:</label><br>
        <input type="number" name="idade" min="0" required><br>

        <label>Porte:</label><br>
        <select name="porte" required>
            <option value="Pequeno">Pequeno</option>
            <option value="Médio">Médio</option>
            <option value="Grande">Grande</option>
        </select><br>

        <label>Cor:</label><br>
        <input type="text" name="cor" required><br>

        <label>Gênero:</label><br>
        <select name="genero" required>
            <option value="Macho">Macho</option>
            <option value="Fêmea">Fêmea</option>           
        </select><br>

        <label>Raça:</label><br>
        <input type="text" name="raca" required><br>

        <label>Descrição:</label><br>
        <input type="text" name="descricao" required><br>

        <label>Histórico de Saúde:</label><br>
        <input type="text" name="historico_med" required><br>

        <label>Última Vacina:</label><br>
        <input type="date" name="ultima_vacina" required><br>

        <br>
        <input type="submit" value="Cadastrar">
    </form>
</body>
</html>