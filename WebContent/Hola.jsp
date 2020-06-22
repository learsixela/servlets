<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>HolaJSP</title>
</head>
<body>
	<p> Este en un parrafo en mi JSP</p>
	
	<form action="Inicio" method="GET">
		Nombre:<input id="name" name="name" value= ""><br>
		Apellido: <input id="name" name="apellido" value= ""><br>
        <button type="submit">Get Mensaje</button>
    </form>
    <br>
    <form action="Inicio" method="POST">
        <button type="submit">Post Mensaje</button>
    </form>
</body>
</html>