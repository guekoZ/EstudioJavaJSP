<%-- 
 Este codigo se explia en el video 233 y esplica como recuperar los datos de un formulario que se envia de archivo html 
se usa el metodo getParameter() para recuperarlos
  
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Usuarios registrados</title>
    </head>
    <body>
        <h1>Usuarios registrados</h1> <br>
        Nombre: <%= request.getParameter("nombre")%> &nbsp; Apellido: <%= request.getParameter("apellido")%>
                
        
        
    </body>
</html>
