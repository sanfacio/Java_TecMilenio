<%-- 
    Document   : index.jsp
    Created on : 2 oct. 2024, 16:44:57
    Author     : Santos G Facio
    Notes: this file uses cookies 
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="controller.muestraSuma" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Suma de números</title>
    </head>
    
        <%
          Cookie ck[]=request.getCookies();
          if(ck.length > 1)
          {
            out.print("<h1>Tu suma anterior fue: ");
            for (int i = 0; i < ck.length; i++)
            {
                if (ck[i].getName().equals("num1"))
                {
                    out.print (ck[i].getValue() + " + ");                    
                }
                if (ck[i].getName().equals("num2"))
                {
                    out.print (ck[i].getValue() + " = ");
                }
                if (ck[i].getName().equals("suma"))
                {
                    out.print (ck[i].getValue());
                }
            }
            out.print("</h1>");
          }        
        %>
    <body>
        
        <form action="muestraSuma" method="post">
            Número 1: <br>
            <input type="text" name="num1" value=""><br><br>
            Número 2: <br>
            <input type="text" name="num2" value=""><br><br>
            <input type="submit" value="Sumar!"><br>
        </form>
    </body>
</html>


