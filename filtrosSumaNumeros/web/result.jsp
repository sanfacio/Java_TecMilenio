<%-- 
    Document   : result.jsp
    Created on : 14 oct. 2024, 18:58:46
    Author     : sanfa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Resultado</title>
</head>
<body>
    <h1>Resultado de la suma</h1>
    <p>La suma es: <%= request.getAttribute("sum") %></p>
    <a href="index.jsp">Volver a sumar</a>
</body>
</html>
