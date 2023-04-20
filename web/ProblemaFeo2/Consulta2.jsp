<%-- 
    Document   : Consulta2
    Created on : 16 abr 2023, 22:54:29
    Author     : filip
--%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="Modelo.Datos2"%>
<%@page import="ModeloDAO.Datos2DAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registros 2</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
    </head>
    <body>
    <div class="container">
        <br>
        <h2>Registros Ejercicio 2</h2><!-- comment -->
        <br>
        <table class="table table-striped" border="1">
            <thead>
                <tr>
                    <th>Precio inicial</th>
                    <th>Precio final</th>
                </tr>
            </thead>
            <%
                Datos2DAO dd2=new Datos2DAO();
                List<Datos2>list=dd2.consultar();
                Iterator<Datos2>iter=list.iterator();
                Datos2 d2= null;
                while(iter.hasNext()){
                    d2=iter.next();
                
                %>
            <tbody>
                <tr>
                    <td><%=d2.getPrecio()%></td>
                    <td><%=d2.getResultado2()%></td>
                </tr>
                <%}%>
            </tbody>
        </table>
    </div>
    </body>
</html>
