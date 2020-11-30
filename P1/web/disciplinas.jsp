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
            if (request.getParameter("nome") != null) {
                Disciplina.insert(
                        (String) request.getParameter("nome"),
                        (String) request.getParameter("ementa"),
                        Integer.parseInt(request.getParameter("ciclo")),
                        Double.parseDouble(request.getParameter("nota"))
                );
            }

            if (request.getParameter("rowid") != null) {
                Disciplina.delete(Long.parseLong(request.getParameter("rowid")));
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
                    <th>Apagar</th>
                </tr>
            </thead>
            <tbody>
                <%for (Disciplina disciplina : Disciplina.getList()) {%>
                <tr>
                    <td><%=disciplina.getNome()%></td>
                    <td><%=disciplina.getEmenta()%></td>
                    <td><%=disciplina.getCiclo()%></td>
                    <td><%=disciplina.getNota()%></td>
                    <td>
                        <form>
                            <input type="submit" value="Apagar" />
                            <input type="hidden" name="rowid" value="<%=disciplina.getRowId()%>" />
                        </form>
                    </td>
                </tr>
                <%}
                %>
            </tbody>
        </table>

        <h2>Adicionar Disciplina</h2>
        <form>
            <input type="text" name="nome" placeholder="Nome da Disciplina" />
            <input type="text" name="ementa" placeholder="Ementa da Disciplina" />
            <input type="text" name="ciclo" placeholder="Ciclo da Disciplina" />
            <input type="text" name="nota" placeholder="Nota da Disciplina" />
            <input type="submit" value="Enviar" />
        </form>
    </body>
</html>
