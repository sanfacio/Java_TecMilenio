<%-- 
    Document   : index
    Created on : 14 oct. 2024, 19:00:49
    Author     : sanfa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Sumar dos números</title>
</head>
<body>
    <h1>Ingrese dos números para sumar</h1>
    
    <form action="sum" method="post">
        Número 1: <input type="number" name="num1" required><br>
        Número 2: <input type="number" name="num2" required><br><br>
        <input type="submit" value="Sumar">
    </form>

    <% 
    String errorMessage = (String) request.getAttribute("errorMessage");
    if (errorMessage != null) {
    %>
        <p style="color:red;"><%= errorMessage %></p>
    <% 
    }
    %>
</body>
</html>

