<%-- 
Este codigo se explica en los videos 241 y 242 y habla sobre las jsp tags, en este caso se utlizo un sensillo 
ejemplo de una arreglo con algunos datos y se utliza la tag <c:forEach>
--%>




<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"  %>

<%
    
String alumnos[] = {"Antonio","Sandra","Paco"};


pageContext.setAttribute("losAlumnos", alumnos);




%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <c:forEach var="tempAlumnos" items="${losAlumnos}">
            
            ${tempAlumnos}<br>
            
        </c:forEach>
        
    </body>
</html>
