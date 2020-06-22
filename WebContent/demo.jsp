<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="java.util.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Demo JSP</title>
</head>
<body>
    <!-- Esta es la declaración de las etiquetas para los métodos -->
    <%! 
    public int add(int a, int b) {
        return a + b;
    }
    %>
    
    <!-- Esta es una etiqueta para cualquier código Java -->
    <% 
    int i = 2;
    int j = 4;
    %>
    <!-- Acceso directo para generar lo que devuelve nuestro método al ser llamado %> -->
    El resultado de la funcion add <h3><%= add(i, j) %></h3>
    
    <br>
    <p>Resultado del for</p>
    <!-- Los bucles for también funcionan! -->
    <% for(int index = 0; index < 5; index++) { %>
        <h1><%= index %></h1>
    <% } %>
    <!-- Aquí tenemos que importar la clase Date. 
    Debes colocar la sentencia import en la primera línea de la etiqueta de su JSP. 
    Usar el atributo import. -->
    <br>
    <p> Muestro Fecha</p>
    <p>La fecha es: <%= new Date() %></p>
    
    <br>
    <!-- Obtenemos el valor del parámetro name -->
    <% String req = request.getParameter("name"); %>
    <!-- Mostramos el valor que obtuvimos -->
    <h1><%= req %></h1>
    
</body>
</html>