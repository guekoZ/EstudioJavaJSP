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
        <h1 style="text-align: center">Agencia de viajes</h1>

        <%

            //Valor por defecto
            String ciudad_favorita = "Madrid";

            //Lee la cookie  de la peticion  del navegador
            Cookie[] lasCookies = request.getCookies();

            // Buscar la preferencia de la ciudad favorita
            if (lasCookies != null) {

                for (Cookie cookie_temporal : lasCookies) {
                    if ("agencia_viajes.ciudad_favorita".equals(cookie_temporal.getName())) {

                        ciudad_favorita = cookie_temporal.getValue();

                        break;

                    }

                }

            }
        %>


        <h3>Vuelos a: <%=ciudad_favorita%> </h3>

        <p>Esto es un texto de ejemplo </p>
        <p>Esto es un texto de ejemplo </p>
        <p>Esto es un texto de ejemplo </p>

        <h3>Hoteles en: <%=ciudad_favorita%> </h3>

        <p>Esto es un texto de ejemplo </p>
        <p>Esto es un texto de ejemplo </p>     
        <p>Esto es un texto de ejemplo </p>

        <h3>Descuento en restaurantes en : <%=ciudad_favorita%> </h3>

        <p>Esto es un texto de ejemplo </p>
        <p>Esto es un texto de ejemplo </p>
        <p>Esto es un texto de ejemplo </p>

    </body>
</html>
