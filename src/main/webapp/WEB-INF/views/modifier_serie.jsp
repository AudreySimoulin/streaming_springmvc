<%-- 
    Document   : modifier_serie
    Created on : 29 mars 2016, 10:10:12
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Streaming</title>
    </head>
    <body>
        <h2>Modifier une s&eacute;</h2>
        <form:form modelAttribute="maSerie" name="modifierSerie" action="" method="post">
            <table>
                <tr>
                    <td>Titre de la s&eacute;rie </td>
                    <td><form:input path="titre"/></td>
                </tr>
                <tr>
                    <td>Ann&eacute;e de production </td>
                    <td><form:input path="annee"/></td>
                </tr>
                <tr>
                    <td>Synopsis </td>
                    <td><form:textarea path="synopsis"/></td>
                </tr>
            </table>
            <form:hidden path="id"/>
            <input type="button" value="Modifier" onclick="majSerie()"/>
        </form:form>
    </body>
</html>
