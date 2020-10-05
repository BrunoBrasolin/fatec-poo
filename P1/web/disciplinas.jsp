<%-- 
    Document   : sobre
    Created on : 5 de out de 2020, 02:18:35
    Author     : bruno
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="java.br.edu.fatecpg.poo.Disciplina"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <jsp:include page="WEB-INF/jspf/menu.jspf" />
        <h1>Disciplina</h1>
        <%
            Disciplina d = new Disciplina("", "", 0);
            ArrayList<Disciplina> disciplinas = new ArrayList<Disciplina>();
            for (int y = 0; y < 6; y++) {
                disciplinas.add(d.getList(y));
            }
        %>
    </body>
</html>
