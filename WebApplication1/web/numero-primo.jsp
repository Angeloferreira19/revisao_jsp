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
        <h1>Numeros Primos</h1>
        <h2>Informe um numero:</h2>
        <form action="numero-primo.jsp" method="post">
            numero: <input type="number" name="numero" id="numero" required>
            <input type="submit" value="Calcular">
        </form>
        
        <%
            String numeroStr = request.getParameter("numero");
            if(numeroStr != null && !numeroStr.isEmpty()){
                try{
                    int numero = Integer.parseInt(numeroStr);
                    if(numero % 2 != 0){
                        out.println("<h2>Esse é um numero primo!</h2>");
                    }else {
                        out.println("<h2>Divisores de " + numero + ": </h2>");
                        for (int i = 1; i <= numero; i++){
                            if(numero % i == 0){
                                out.println(i + " ");
                            }
                        }
                    }
                } catch (NumberFormatException e){
                    out.println("<h2>Entrada inválida. Por favor, forneça um numero válido!</h2>");
                }   
            }
        %>
        <hr>
    </body>
</html>
