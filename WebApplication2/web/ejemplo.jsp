<%-- 
    Document   : ejemplo
    Created on : 26 ago. 2024, 20:22:31
    Author     : sanfa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import = "Calculos.Suma" %>
<%@page import = "Calculos.Resta" %>
<%@page import = "Calculos.Multiplicacion" %>
<%@page import = "Calculos.Division" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Resultado de las operaciones</h1>
        <%!int resultado;%>
        <%!String op;%>
        
        <% 
            String n1=request.getParameter("num1");
            String n2=request.getParameter("num2");
            op=request.getParameter("operacion");
                                    
            switch (op) {
                case "suma":
                    Suma s = new Suma (n1, n2);
                    s.hacerSuma();
                    resultado = s.getResultado();
                    break;
                case "resta":
                    Resta r = new Resta (n1, n2);
                    r.hacerResta();
                    resultado = r.getResultado();
                    break;  
                case "multiplicacion":
                    Multiplicacion m = new Multiplicacion (n1, n2);
                    m.hacerProducto();
                    resultado = m.getResultado();
                    break; 
                case "division":
                    Division d = new Division (n1, n2);
                    d.hacerDivision();
                    resultado = d.getResultado();
                    break; 
            }
            
        %>
        
        <b>El resultado de la <%=op%> es: <%=resultado%></b>
    </body>
</html>
