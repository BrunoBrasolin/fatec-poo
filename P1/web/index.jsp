<%-- 
    Document   : index
    Created on : 5 de out de 2020, 03:17:35
    Author     : bruno
--%>

<%@page import="br.edu.fatecpg.poo.Disciplina"%>
<%@page import="java.util.ArrayList" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <jsp:include page="WEB-INF/jspf/menu.jspf" />
        <h1>Bruno Brasolin Carravieri</h1>
        <h2>RA: 1290481912003</h2>
        <% ArrayList<Disciplina> disciplinas = Disciplina.getList(); %>

        <h2>Quantidade de Disciplinas Matriculas: <%= disciplinas.size() %></h2>
    </body>
</html>
