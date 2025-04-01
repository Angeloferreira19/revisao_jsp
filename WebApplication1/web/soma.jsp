<%-- 
    Document   : index
    Created on : 26 de fev. de 2021, 09:40:42
    Author     : Fatec
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h5>Menu</h5>
        <%@include file="WEB-INF/jspf/menu.jspf" %>
        <h1>Soma</h1>
        <h2>Informe um numero: </h2>
        <form action="soma.jsp" method="post">
            Número: <input type="number" name="numero" id="numero" required>
        <input type="submit" value="Calcular">
    </form>

    <%
        String numeroStr = request.getParameter("numero");
        if (numeroStr != null && !numeroStr.isEmpty()) {
            int numero = Integer.parseInt(numeroStr);
            int soma = 0;
            for (int i = 1; i < numero; i++) {
                soma += i;
            }
            out.println("<p>A soma dos números menores que " + numero + " é: " + soma + "</p>");
        } else if (request.getMethod().equalsIgnoreCase("POST")){
            out.println("<p>Por favor, digite um número.</p>");
        }
    %>
    <hr>
    </body>
</html>
