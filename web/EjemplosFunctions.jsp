<%-- 
    Este ejemplo se explica en la segunda mitad del video 245 y habla sobre la tags functions
--%>


<%-- Debemos importar las librerias correpondientes de las tags  --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>



<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Ejemplo de una function tag</h1>

        <c:set  var="datos" value="Ana,Lopez,Directora,75000"/>
            <c:set  var="datosArray" value="${fn:split(datos, ',')}"/>

                <input type="text" value="${datosArray[0]}"><br/>    
                <input type="text" value="${datosArray[1]}"><br/>    
                <input type="text" value="${datosArray[2]}"><br/>    
                <input type="text" value="${datosArray[3]}">   


     </body>
</html>