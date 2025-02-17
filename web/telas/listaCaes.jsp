<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Lista de Cães</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f5f5f5;
        }
        .container {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            gap: 20px;
            padding: 20px;
        }
        .card {
            background: white;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            padding: 20px;
            width: 250px;
            text-align: center;
        }
        .card h2 {
            margin: 0 0 10px;
            font-size: 20px;
        }
        .btn {
            padding: 10px;
            background-color: #4CAF50;
            color: white;
            border: none;
            cursor: pointer;
            border-radius: 5px;
            margin-top: 10px;
        }
    </style>
</head>
<body>
    <h1 style="text-align: center;">Lista de Cães</h1>
    <div class="container">
        <%
            String url = "jdbc:mysql://localhost:3306/adote?useSSL=false&serverTimezone=UTC";
            String usuario = "root";
            String senha = "root";
            
            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
                Connection conexao = DriverManager.getConnection(url, usuario, senha);
                String sql = "SELECT id, nome FROM caes";
                PreparedStatement stmt = conexao.prepareStatement(sql);
                ResultSet rs = stmt.executeQuery();
                
                while (rs.next()) {
        %>
        <div class="card">
            <h2><%= rs.getString("nome") %></h2>
            <a href="informacoes.jsp?id=<%= rs.getInt("id") %>"><button class="btn">Informações</button></a>
        </div>
        <%
                }
                conexao.close();
            } catch (Exception e) {
                out.println("<p style='color:red; text-align:center;'>Erro ao buscar os dados: " + e.getMessage() + "</p>");
            }
        %>
    </div>
</body>
</html>
