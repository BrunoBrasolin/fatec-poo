<%-- 
    Document   : index
    Created on : 5 de out de 2020, 03:17:35
    Author     : bruno
--%>

<%@page import="br.edu.fatecpg.poo.Disciplina"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <jsp:include page="WEB-INF/jspf/menu.jspf" />
        <% Disciplina d = new Disciplina("", "", 1); %>
        <h1>Hello World!</h1>
    </body>
</html>
