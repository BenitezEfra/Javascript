<%-- 
    Document   : Consulta3
    Created on : 16 abr 2023, 22:56:03
    Author     : filip
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
    </head>
    <body>
    <div class="container">
        <br>
        <h2>Registros Ejercicio 3</h2><!-- comment -->
        <br>
        <table class="table table-striped" border="1">
            <thead>
                <tr>
                    <th>Numero 1</th>
                    <th>Numero 2</th>
                    <th>Numero 3</th>
                    <th>Numero mayor</th>
                </tr>
            </thead>
            <%
                Datos3DAO dd3=new Datos3DAO();
                List<Datos3>list=dd3.consultar();
                Iterator<Datos3>iter=list.iterator();
                Datos3 d3= null;
                while(iter.hasNext()){
                    d3=iter.next();
                
                %>
            <tbody>
                <tr>
                    <td><%=d3.getN1()%></td>
                    <td><%=d3.getN2()%></td>
                    <td><%=d3.getN3()%></td>
                    <td><%=d3.getnMayor()%></td>
                </tr>
                <%}%>
            </tbody>
        </table>
    </div>    
    </body>
</html>

