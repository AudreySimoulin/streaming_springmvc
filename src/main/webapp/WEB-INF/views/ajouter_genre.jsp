<%-- 
    Document   : ajouter_genre
    Created on : 25 mars 2016, 10:48:00
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
        <h2>Ajouter un genre</h2>
        <form:form modelAttribute="monGenre" name="ajouterGenre" action="ajouterGenre" method="post">
            Nom du genre : <form:input path="nom"/>
            <input type="button" value="Ajouter" onclick="majGenre()"/>
        </form:form>
    </body>
</html>
