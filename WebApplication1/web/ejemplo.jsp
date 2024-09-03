<%-- 
    Document   : ejemplo
    Created on : 26 ago. 2024, 16:00:17
    Author     : sanfa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="calculos.Suma" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <%
            String n1=request.getParameter("num1");
            String n2=request.getParameter("num2");
            Suma s=new Suma(n1,n2);
            s.hacerSuma();
            int resultado=s.getResultado();
        %>
        
        <%=resultado%>
    </body>
</html>
