    <%@ page import="java.sql.*" %>
    <%@ page import="java.io.*" %>
    <%@ page import="java.util.Base64" %>

    <%
        String idCao = request.getParameter("id"); // Obt�m o ID do c�o
        String nome = "";
        String idade = "";
        String porte = "";
        String cor = "";
        String genero = "";
        String raca = "";
        String descricao = "";
        String historicoMed = "";
        String ultimaVacina = "";
        byte[] imagemBytes = null;

        // Configura��es do banco de dados
        String url = "jdbc:mysql://localhost:3306/adote?useSSL=false&serverTimezone=UTC";
        String usuario = "root";
        String senha = "root";

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conexao = DriverManager.getConnection(url, usuario, senha);

            String sql = "SELECT * FROM caes WHERE id = ?";
            PreparedStatement stmt = conexao.prepareStatement(sql);
            stmt.setString(1, idCao);
            ResultSet rs = stmt.executeQuery();

            if (rs.next()) {
                nome = rs.getString("nome");
                idade = rs.getString("idade");
                porte = rs.getString("porte");
                cor = rs.getString("cor");
                genero = rs.getString("genero");
                raca = rs.getString("raca");
                descricao = rs.getString("descricao");
                historicoMed = rs.getString("historico_med");
                ultimaVacina = rs.getString("ultima_vacina");
                imagemBytes = rs.getBytes("imagem"); // Obt�m a imagem do banco de dados
            }

            conexao.close();
        } catch (Exception e) {
            out.println("<p style='color:red;'>Erro ao buscar os dados: " + e.getMessage() + "</p>");
        }

        // Converte a imagem para base64
        String imagemBase64 = null;
        if (imagemBytes != null) {
            imagemBase64 = Base64.getEncoder().encodeToString(imagemBytes);
        }
    %>

    <!DOCTYPE html>
    <html>
    <head>
        <title>Informa��es do C�o</title>
        <style>
            body { font-family: Arial, sans-serif; background-color: #f5f5f5; text-align: center; }
            .container { background: white; padding: 20px; border-radius: 8px; width: 50%; margin: auto; box-shadow: 0px 4px 8px rgba(0,0,0,0.1); }
            .btn { padding: 10px; background-color: #4CAF50; color: white; border: none; cursor: pointer; border-radius: 5px; margin-top: 10px; text-decoration: none; display: inline-block; }
            .foto-preview { width: 200px; height: 200px; object-fit: cover; border-radius: 8px; margin-bottom: 10px; }
        </style>
    </head>
    <body>
        <a href="listaCaesUser.jsp">voltar</a>
        <div class="container">
            <% if (imagemBase64 != null) { %>
                <img src="data:image/jpeg;base64,<%= imagemBase64 %>" class="foto-preview">
            <% } %>

            <!-- Outras informa��es do c�o -->
            <h1><%= nome %></h1>
            <p><strong>Idade:</strong> <%= idade %> anos</p>
            <p><strong>Porte:</strong> <%= porte %></p>
            <p><strong>Cor:</strong> <%= cor %></p>
            <p><strong>G�nero:</strong> <%= genero %></p>
            <p><strong>Ra�a:</strong> <%= raca %></p>
            <p><strong>Descri��o:</strong> <%= descricao %></p>
            <p><strong>Hist�rico M�dico:</strong> <%= historicoMed %></p>
            <p><strong>�ltima Vacina:</strong> <%= ultimaVacina %></p>

            <!-- Bot�o de entrar em contato -->
            <a class="btn" href="https://wa.me/5511981319707?text=Ol�, tenho interesse em adotar o c�o <%= nome %>!" target="_blank">Tenho Interesse</a>
        </div>
    </body>
    </html>