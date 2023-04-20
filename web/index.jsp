<%-- 
    Document   : index
    Created on : 18 abr 2023, 11:07:35
    Author     : filip
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Menu</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
    </head>
    <body>
        <body>
        <div class="container">
        <br>
        <h2>Ejercicio 1</h2>
        <p>Un individuo invierte en un banco y desea saber cuanto ganará después de 1 mes (2% mensual).</p>
        <a class="btn btn-primary" href="Controlador1?accion=registrar">Ejercicio 1</a><br><br>      
        <a class="btn btn-primary" href="Controlador1?accion=consultar">Registros</a>
        <br>
        <br>
        <h2>Ejercicio 2</h2>
        <p>Una tienda ofrece un descuento de 15% sobre el total de compra, saber cuanto deberá pagar el cliente.</p>
        <a class="btn btn-primary" href="Controlador2?accion=registrar">Ejercicio 2</a><br><br>    
        <a class="btn btn-primary" href="Controlador2?accion=consultar">Registros</a>
        <br>
        <br>
        <h2>Ejercicio 3</h2>
        <p>Leer 3 numeros e imprimir el mayor.</p>
        <a class="btn btn-primary" href="Controlador3?accion=registrar">Ejercicio 3</a><br><br>    
        <a class="btn btn-primary" href="Controlador3?accion=consultar">Registros</a>
        </div>
    </body>
</html>
