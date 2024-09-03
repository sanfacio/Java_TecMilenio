<%-- 
    Document   : newjsp
    Created on : 26 ago. 2024, 19:58:19
    Author     : sanfa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <%! int num1=7; %>
        <%! int num2=4; %>

        <%! public int suma(int a, int b)
        {
          return a+b;
        }
        %>

        <%
          int resultado = suma (num1, num2);
        %>

        <%= resultado %>
    </body>
</html>