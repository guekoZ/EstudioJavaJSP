<%-- 
    Document   : calcular
    Created on : 15 ago 2025, 7:10:47 p.m.
    Author     : gueko
--%>

<%@page import="metodos.java.calcula" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Esta es la suma de 5 + 7</h1>
        
        <%= calcula.suma(5, 7) %>
        <br>
            <%= calcula.resta(5, 7) %>
            <br>
                <%= calcula.multiplicacion(5, 7) %>
    </body>
</html>
