package com.tccalheio.servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

@WebServlet("/uploadImagem") // Define a URL do Servlet
@MultipartConfig // Habilita o suporte a multipart (upload de arquivos)
public class UploadImagemServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String idCao = request.getParameter("id"); // Obtém o ID do cão

        // Configurações do banco de dados
        String url = "jdbc:mysql://localhost:3306/adote?useSSL=false&serverTimezone=UTC";
        String usuario = "root";
        String senha = "root";

        // Log inicial
        System.out.println("Iniciando processamento do upload...");
        System.out.println("ID do cão: " + idCao);
        System.out.println("Tipo de conteúdo da requisição: " + request.getContentType());

        // Verifica se o formulário foi enviado com um arquivo
        if (request.getContentType() != null && request.getContentType().startsWith("multipart/form-data")) {
            System.out.println("Requisição multipart detectada.");

            try {
                // Obtém a parte do arquivo enviado
                Part filePart = request.getPart("foto");

                if (filePart == null) {
                    System.out.println("Erro: Part 'foto' é nulo.");
                    response.getWriter().println("<p style='color:red;'>Erro: Nenhum arquivo foi enviado.</p>");
                } else {
                    System.out.println("Part 'foto' encontrado. Tamanho: " + filePart.getSize());

                    InputStream fileContent = filePart.getInputStream();
                    byte[] imagemBytes = fileContent.readAllBytes();

                    System.out.println("Tamanho da imagem em bytes: " + imagemBytes.length);

                    // Conecta ao banco de dados e atualiza a coluna de imagem
                    Class.forName("com.mysql.cj.jdbc.Driver");
                    System.out.println("Driver do MySQL carregado com sucesso.");

                    Connection conexao = DriverManager.getConnection(url, usuario, senha);
                    System.out.println("Conexão com o banco de dados estabelecida.");

                    String sql = "UPDATE caes SET imagem = ? WHERE id = ?";
                    PreparedStatement stmt = conexao.prepareStatement(sql);
                    stmt.setBytes(1, imagemBytes);
                    stmt.setString(2, idCao);

                    System.out.println("Executando a atualização no banco de dados...");
                    stmt.executeUpdate();
                    System.out.println("Atualização realizada com sucesso.");

                    conexao.close();
                    System.out.println("Conexão com o banco de dados fechada.");

                    // Redireciona de volta para a página de informações
                    response.sendRedirect("telas/informacoes.jsp?id=" + idCao);
                }

            } catch (Exception e) {
                System.out.println("Erro ao processar o upload: " + e.getMessage());
                e.printStackTrace(); // Log do stack trace completo
                response.getWriter().println("<p style='color:red;'>Erro ao processar o upload: " + e.getMessage() + "</p>");
            }
        } else {
            System.out.println("Erro: Formulário não é multipart.");
            response.getWriter().println("<p style='color:red;'>Formulário não é multipart.</p>");
        }
    }
}