<%-- 
    Document   : muestraResultad
    Created on : 4 sep. 2024, 19:22:48
    Author     : sanfa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.Suma" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Resultado de la suma</title>
    </head>
    <body>
        <%
            Suma s =(Suma) request.getAttribute("sumaResuelta");
        %>
        
        <h1>El resultado de sumar </h1> <%=s.getNum1()%> <h1> + </h1> <%=s.getNum2()%><h1>es: </h1><%=s.getResultado()%>
        
    </body>
</html>
