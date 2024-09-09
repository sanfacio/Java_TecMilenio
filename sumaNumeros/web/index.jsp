<%-- 
    Document   : index
    Created on : 4 sep. 2024, 19:22:26
    Author     : sanfa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="controller.muestraSuma" %>
        
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>WebApp que suma dos números</title>
    </head>
    <body>
        <h1>WebApp que suma dos números</h1>
        <h3>Introduce los números a sumar</h3> <br><br> 
        <form action="muestraSuma" method="post">
            Número 1:
            <input type="text" name="num1" value=""><br><br> 
            Número 2:
            <input type="text" name="num2" value=""><br><br> 
            <input type="submit" value="Sumar">
        </form>
    </body>
</html>
