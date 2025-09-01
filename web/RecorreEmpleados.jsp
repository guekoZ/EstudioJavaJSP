<%-- 
  Este codigo es explicado en el video 243 y habla sobre los tags, ademas utiliza la clase empleados
--%>

<%@page language="java" contentType="text/html" pageEncoding="UTF-8"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@page import="java.util.*,java.sql.*,jsptags.Empleado"%>

<%
    ArrayList<Empleado> datos = new ArrayList<>();
    Class.forName("org.mariadb.jdbc.Driver");

    try {
        Connection miConexion = DriverManager.getConnection("jdbc:mariadb://192.168.1.11:3306/prueba", "root", "normab");

        Statement miStatement = miConexion.createStatement();

        String instruccionSql = "SELECT * FROM empleados";

        ResultSet rs = miStatement.executeQuery(instruccionSql);

        while (rs.next()) {

            datos.add(new Empleado(rs.getString(1), rs.getString(2), rs.getString(3), rs.getInt(4)));

        }
        rs.close();
        miConexion.close();

    } catch (Exception e) {

        out.println("Ha ocurrido un error");
        e.printStackTrace();

    }
        
    pageContext.setAttribute("losEmpleados", datos);
    
  %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>

        <style>
            .cabecera{
                font-weight: bold;
            }

        </style>
    </head>
    <body>
        <table border="1">
            <tr class="cabecera"><td>Nombre</td><td>Apellido</td><td>Puesto</td><td>Salario</td></tr>
            
            <c:forEach var="EmpTemp" items="${losEmpleados}">
                <tr>
                    <td>${EmpTemp.nombre}</td> <td>${EmpTemp.apellido} </td> <td>${EmpTemp.puesto}</td>
                    
                    <td>
                    
                        <c:if test="${EmpTemp.salario < 40000}">  ${EmpTemp.salario + 5000} </c:if>
                       <c:if test="${EmpTemp.salario >= 40000}">  ${EmpTemp.salario} </c:if>
                    </td>
                
                </tr>
                
                
            </c:forEach>
                
        </table>
    </body>
</html>
