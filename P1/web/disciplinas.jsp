<%-- 
    Document   : disciplinas
    Created on : 5 de out de 2020, 03:26:45
    Author     : bruno
--%>

<%@page import="java.util.ArrayList"%>
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
        <%
            Disciplina d = new Disciplina("", "", 0);
            ArrayList<Disciplina> disc = new ArrayList<Disciplina>();
            for (int y = 0; y < 6; y++) {
                disc.add(d.getList(y));
            }
        %>
        <h1>Disciplinas</h1>
        <table border="1">
            <thead>
                <tr>
                    <th>Nome</th>
                    <th>Ementa</th>
                    <th>Ciclo</th>
                    <th>Nota</th>
                </tr>
            </thead>
            <tbody>
                <%
                    for (int y = 0; y < 6; y++) { %>
                <tr>
                    <% Disciplina disciplina = disc.get(y);%>
                    <td><%=disciplina.getNome()%></td>
                    <td><%=disciplina.getEmenta()%></td>
                    <td><%=disciplina.getCiclo()%></td>
                    <td><%=disciplina.getNota()%></td>
                </tr>
                <%}
                %>
            </tbody>
        </table>
    </body>
</html>
