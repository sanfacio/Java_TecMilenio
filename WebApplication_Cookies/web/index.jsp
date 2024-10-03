<%-- 
    Document   : index.jsp
    Created on : 2 oct. 2024, 16:44:57
    Author     : Santos G Facio
    Notes: this file uses HttpSession 

--%>

<%@page import = "java.util.Enumeration"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="controller.muestraSuma" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Suma de números</title>
    </head>   
    
    <body>
        <%
            HttpSession sesion = request.getSession(false);
            Enumeration e = sesion.getAttributeNames();
            
            if (e.hasMoreElements())
            {
                out.print ("<h1>Tu suma anterior fue: ");
                out.print (sesion.getAttribute ("num1") + " + ");
                out.print (sesion.getAttribute ("num2") + " = ");
                out.print (sesion.getAttribute ("suma"));
                out.print ("</h1>");
            }
                  
        %>
        <form action="muestraSuma" method="post">
            Número 1: <br>
            <input type="text" name="num1" value=""><br><br>
            Número 2: <br>
            <input type="text" name="num2" value=""><br><br>
            <input type="submit" value="Sumar!"><br>
        </form>
    </body>
</html>


