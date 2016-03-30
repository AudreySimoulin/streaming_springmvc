<%-- 
    Document   : modifier_film
    Created on : 29 mars 2016, 09:33:48
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
        <h2>Modifier un film</h2>
        <form:form modelAttribute="monFilm" name="modifier" action="" method="post">
            <table>
                <tr>
                    <td>Titre du film </td>
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
                <tr>
                    <td>Genre </td>
                    <td><form:select path="genre.id">
                            <form:options items="${mesGenres}" itemLabel="nom" itemValue="id"/>
                        </form:select>
                    </td>
                </tr>
            </table>
            <form:hidden path="id"/>
            <input type="button" value="Modifier" onclick="majFilm()"/>
        </form:form>
    </body>
</html>