<%-- 
    Document   : calculator
    Created on : 4 nov. 2024, 19:49:04
    Author     : sanfa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html>
<head>
    <title>Calculadora MVC</title>
</head>
<body>
    <h2>Calculadora MVC</h2>
    <form action="calculate" method="post">
        <label for="number1">Número 1:</label>
        <input type="number" id="number1" name="number1" step="1" required><br><br>
        
        <label for="number2">Número 2:</label>
        <input type="number" id="number2" name="number2" step="1" required><br><br>
        
        <label for="operation">Selecciona una operación:</label>
        <select id="operation" name="operation">
            <option value="suma">Suma</option>
            <option value="resta">Resta</option>
            <option value="multiplica">Multiplicación</option>
            <option value="divide">División</option>
        </select><br><br>
        
        <button type="submit">Calcular</button>
    </form>
</body>
</html>