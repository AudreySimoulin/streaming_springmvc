<%-- 
    Document   : liste_films
    Created on : 25 mars 2016, 11:15:47
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
        <h2>Liste des films</h2>
        <span onclick="ajouterFilmEcran()">Ajouter un film</span>
            <br/>
            <table>
                <tr>
                    <td>Titre du film</td>
                    <td>Ann&eacute;e de production</td>
                    <td>Synopsis</td>
                    <td>Genre</td>
                </tr>
            <c:forEach items="${mesFilms}" var="monFilm">
                <tr>
                    <td>${monFilm.titre}</td> 
                    <td>${monFilm.annee}</td>
                    <td>${monFilm.synopsis}</td>
                    <td>${monFilm.genre.nom}</td>
                    <td> <input type="button" value="Modifier" onclick="modifierFilm(${monFilm.id})"/> &nbsp; <input type="button" value="Supprimer" onclick="supprimerFilm(${monFilm.id})"/> </td>
                </tr>
            </c:forEach>
        </table>    
    </body>
</html>
