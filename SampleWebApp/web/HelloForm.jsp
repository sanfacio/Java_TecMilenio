<%-- 
    Document   : HelloForm
    Created on : 11 sep. 2024, 16:55:23
    Author     : sanfa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Uso del método GET</title>
    </head>
    <body bgcolor = \"#f0f0f0\">
        <% 
            String nombre=request.getParameter("Nombre");
            String apellido=request.getParameter("apellido");
        %>            
        <h1 align = \"center\">Uso del método GET para leer datos del navegador cliente</h1>
        <ul>
            <li><b>Nombre: </b> <%=nombre%><br>
            <li><b>Apellido: </b> <%=apellido%><br>                
        </ul>
    </body>
</html>




