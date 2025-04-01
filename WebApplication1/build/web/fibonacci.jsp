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
        <h1>Fibonacci</h1>
        <h2>Informe um numero:</h2>
        <form method="post">
        <label for="numero">Digite um número:</label>
        <input type="number" name="numero" id="numero" required>
        <button type="submit">Calcular</button>
    </form>

    <%
        String numeroStr = request.getParameter("numero");
        if (numeroStr != null && !numeroStr.isEmpty()) {
            int numero = Integer.parseInt(numeroStr);
            if (numero >= 0) {
                out.println("<h2>Sequência de Fibonacci até " + numero + ":</h2>");
                for (int i = 0; i <= numero; i++) {
                    out.println(fibonacci(i) + " ");
                }
                out.println("<h3>Fim! </h3>");
            } else {
                out.println("<p>Por favor, digite um número não negativo.</p>");
            }
        }
    %>

    <%!
        public int fibonacci(int n) {
            if (n <= 1) {
                return n;
            }
            return fibonacci(n - 1) + fibonacci(n - 2);
        }
    %>
        <hr>
    </body>
</html>
