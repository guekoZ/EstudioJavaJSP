<%-- 
    Document   : recibe_peticion
    Created on : 20 ago 2025, 8:29:09 p.m.
    Author     : gueko
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       
        <%
           //Leyendo los datos del formulario 
        String ciudad_favorita=request.getParameter("cuidad_favorita");
        
        //Creando la cookie
         
        Cookie laCookie= new Cookie("agencia_viajes.ciudad_favorita",ciudad_favorita);
        
        //La vida de la Cookie
        
        laCookie.setMaxAge(365*24*60*60);

        //Enviar al usuario
        response.addCookie(laCookie);
              
        %>
        
        
       Gracias por enviar tus preferencias
       
       <a href="agencia_viajes.jsp">Ir la pagina de viajes</a>
    </body>
</html>
