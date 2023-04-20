<%-- 
    Document   : Respownse3
    Created on : 16 abr 2023, 22:56:40
    Author     : filip
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Resultado</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
    </head>
    <body>
    <div class="container">
        <br>
        <h2>Resultado</h2>
        <br>
        <p>Número 1: <%= request.getAttribute("n1") %></p>
        <p>Número 2: <%= request.getAttribute("n2") %></p>
        <p>Número 3: <%= request.getAttribute("n3") %></p>
        <p>Número mayor: <%= request.getAttribute("nMayor") %></p>
    </div>
    </body>
</html>
