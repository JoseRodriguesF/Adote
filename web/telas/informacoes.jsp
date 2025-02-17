<%
    String id = request.getParameter("id");
    String url = "jdbc:mysql://localhost:3306/adote?useSSL=false&serverTimezone=UTC";
    String usuario = "root";
    String senha = "root";

    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection conexao = DriverManager.getConnection(url, usuario, senha);
        String sql = "SELECT * FROM caes WHERE id = ?";
        PreparedStatement stmt = conexao.prepareStatement(sql);
        stmt.setString(1, id);
        ResultSet rs = stmt.executeQuery();

        if (rs.next()) {
%>
    <%-- Exibir a Imagem se Existir --%>
    <% if (rs.getBytes("imagem") != null) { %>
        <img src="exibirImagem.jsp?id=<%= id %>" alt="Foto do Cão" style="width: 200px; height: auto;">
    <% } %>

    <h2><%= rs.getString("nome") %></h2>
    <p><strong>Idade:</strong> <%= rs.getInt("idade") %> anos</p>
    <p><strong>Porte:</strong> <%= rs.getString("porte") %></p>
    <p><strong>Cor:</strong> <%= rs.getString("cor") %></p>
    <p><strong>Gênero:</strong> <%= rs.getString("genero") %></p>
    <p><strong>Raça:</strong> <%= rs.getString("raca") %></p>
    
    <%-- Formulário para Enviar Foto --%>
    <form action="uploadImagem.jsp" method="POST" enctype="multipart/form-data">
        <input type="hidden" name="id" value="<%= id %>">
        <input type="file" name="imagem" required>
        <button type="submit">Adicionar Foto</button>
    </form>

<%
        }
        conexao.close();
    } catch (Exception e) {
        out.println("<p style='color:red; text-align:center;'>Erro ao buscar os dados: " + e.getMessage() + "</p>");
    }
%>