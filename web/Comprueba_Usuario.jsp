<%-- 
    
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <!-- Se puede agregar las clases con la siguiente declaracion -->
        <%@ page import ="java.sql.*" %>

        <%
            
            //Se reciben los datos que se envian del formulario de la pagina html, se envian con post
            
           
            String usuario = request.getParameter("usuario");
            String contra = request.getParameter("contra");
           
            
            //Se hace mencion de la libreria que se instalo, en este caso se cargan los drivers mariadb. Es la forma en que 
            //inicia el driver del jdbc
            Class.forName("org.mariadb.jdbc.Driver");
            
            try{

            Connection miconexion = java.sql.DriverManager.getConnection("jdbc:mariadb://192.168.1.11:3306/proyecto_jsp", "root", "normab");
            
            PreparedStatement c_preparada= miconexion.prepareStatement("SELECT * FROM usuarios WHERE usuario = ? AND contrasena = ? ");
            
           c_preparada.setString(1,usuario);
           c_preparada.setString(2,contra);
           
           ResultSet miResultset = c_preparada.executeQuery();
           
           if(miResultset.absolute(1)){
           out.println("El usuario esta autorizado");
            }else{
            
            out.println("El usuario no esta autorizado");
            }
           
            
            }catch(Exception e){
            
            out.println("Ocurrio algun error y no se pudo hacer el registro");
            }

        %>
        
        
    </body>
</html>
