<%-- 
    Document   : Consulta1
    Created on : 16 abr 2023, 22:39:28
    Author     : filip
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registros 1</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
    </head>
    <body>
        <div class="container">
        <br>
        <h2>Registros Ejercicio 1</h2><!-- comment -->
        <br>
        <table class="table table-striped" border="1">
            <thead>
                <tr>
                    <th>Capital </th>
                    <th>Ganancias</th>
                </tr>
            </thead>
            <%
                Datos1DAO dd1=new Datos1DAO();
                List <Datos1> list=dd1.consultar();
                Iterator<Datos1>iter=list.iterator();
                Datos1 d1= null;
                while(iter.hasNext()){
                    d1=iter.next();
                
                %>
            <tbody>
                <tr>
                    <td><%=d1.getCapital()%></td>
                    <td><%=d1.getResultado1()%></td>
                </tr>
                <%}%>
            </tbody>
        </table>
    </div>
    </body>
</html>
