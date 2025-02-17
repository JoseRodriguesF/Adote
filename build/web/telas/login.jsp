<%@page contentType="text/html" pageEncoding="UTF-8"%>
 <%
            String user = request.getParameter("usuario");
            String pass = request.getParameter("senha");

            if ("admin".equals(user) && "admin".equals(pass)) {

                response.sendRedirect("cadastroCaes.jsp"); // mudar para redirect correto
               
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