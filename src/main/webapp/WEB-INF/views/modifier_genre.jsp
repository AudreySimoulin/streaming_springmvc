<%-- 
    Document   : modifier_genre
    Created on : 29 mars 2016, 09:11:34
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
        <h2>Modifier un genre</h2>
        <form:form modelAttribute="monGenre" name="modifierGenre" action="" method="post">
            Nom du genre : <form:input path="nom"/>
            <form:hidden path="id"/>
            <input type="button" value="Modifier" onclick="majGenre()"/>
        </form:form>
    </body>
</html>
