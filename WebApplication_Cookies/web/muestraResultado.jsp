<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%-- 
    Document   : muestraResultado
    Created on : 2 oct. 2024, 16:45:14
    Author     : Santos G Facio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import = "model.Suma" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Muestra resultado de la suma</title>
    </head>
    <body>
        <% Suma s = (Suma) request.getAttribute ("sumaResuelta"); %>
        <h1>El resultado de sumar <%=s.getNum1() %> + <%=s.getNum2() %> es <%=s.getResultado() %> </h1> 
        
        <a href="index.jsp">Hacer otra suma</a>
    </body>
</html>
