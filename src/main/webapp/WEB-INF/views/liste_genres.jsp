<%-- 
    Document   : liste_genres
    Created on : 25 mars 2016, 11:42:12
    Author     : admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Streaming</title>
    </head>
    <body>
        <h2>Liste des genres</h2>
        <span onclick="ajouterGenreEcran()">Ajouter un genre</span>
        <br/>
        <table>
        <c:forEach items="${mesGenres}" var="monGenre">
            <tr>
                <td>${monGenre.nom}</td>
                <td><input type="button" value="Modifier" onclick="modifierGenre(${monGenre.id})"/> &nbsp; <input type="button" value="Supprimer" onclick="supprimerGenre(${monGenre.id})"/></td>
            </tr>
        </c:forEach>            
        </table>

    </body>
</html>
