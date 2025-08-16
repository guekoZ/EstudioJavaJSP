<%-- 
    Created on : 16 ago 2025, 6:27:30 a.m.
    
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Estos son algunos objetos predifinidos JSP</h1>
        
        Peticion de los datos del navegador <%= request.getHeader("User-Agent")%>
        
        <br>
        <br>
       
        Peticion del idioma del naveagor <%= request.getLocale()%>

    </body>
</html>
