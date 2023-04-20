<%-- 
    Document   : Respownse1
    Created on : 16 abr 2023, 22:39:41
    Author     : filip
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ejercicio 1</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
    </head>
    <body>
    <div class="container">
        <br>
        <h2>Ejercicio 1</h2>
        Un individuo invierte en un banco y desea saber cuanto ganará después de 1 mes (2% mensual).
        <br>
        <br>
        <br>
        
        <form action="Controlador1">
            Capital: <input type="text" name="capital" required><br>
            <br>
            <input type="submit" class="btn btn-primary" name="accion" value="Calcular">
            <!-- comment --><!-- comment -->
        </form>
    </div>
    </body>
</html>
