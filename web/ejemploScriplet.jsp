<%-- 
   Este ejemplo se explica en el video 230 y habla sobre los scriplet o lo que son las <% %> en sus diferentes formas, en 
estos se puede poner codigo java y mostrarlo en la pagina html.
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Este esta es la fecha</h1> <%= new java.util.Date()%>
        
        <%
          for(int i=0; i<10; i++){
          out.println("<br> Este el mensaje" + i);
          
            }
      
        
        
        
        %>
    </body>
</html>
