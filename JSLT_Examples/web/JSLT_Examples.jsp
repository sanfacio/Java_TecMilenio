<%-- 
    Document   : JSLT_Examples
    Created on : 23 sep. 2024, 19:39:51
    Author     : sanfa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <%--c:redirect url = "https://tecmilenio.mx/"/ --%>
        <h1>Librería Core</h1>
        <lu> 
            <li><c:out value="${'Ejemplo de c:out'}" /></li>
            <li>El valor del income es: <c:set var="Income" scope="session" value="${4000*4}"/>  
            <c:out value="${Income}"/> </li>
            <li> Usando c:if - 
                <c:set var = "salary" scope = "session" value = "${500*2}"/>
                <c:if test = "${salary > 2000}">
                   <c:out value="${'Mi salario es mayor que 2000'}" />
                </c:if>
                <c:if test = "${salary <= 2000}">
                   <c:out value="${'Mi salario es menor que 2000'}" /> 
                </c:if>
            </li>
            
            <li>Usando c:choose - Tu salario es:
                <c:set var = "salary2" scope = "session" value = "${500*2}"/>
                <c:out value = "${salary2}"/>
                <c:choose>
                    <c:when test = "${salary2 <= 2000}">
                        ¡Tu salario es muy bajo para sobrevivir!
                    </c:when>
                    <c:when test = "${salary2 > 2000}">
                        Tu salario es bueno.
                    </c:when>
        
                    <c:otherwise>
                        Sin comentarios...
                    </c:otherwise>
                </c:choose>
            </li> 
        </lu>
    </body>
</html>
