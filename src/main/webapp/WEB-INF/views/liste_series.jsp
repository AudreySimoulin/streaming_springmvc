<%-- 
    Document   : liste_series
    Created on : 25 mars 2016, 11:35:53
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
        <h2>Liste des s&eacute;ries</h2>
        <span onclick="ajouterSerieEcran()">Ajouter une s&eacute;rie</span>
            <br/>
            <table>
                <tr>
                    <td>Titre de la s&eacute;rie</td>
                    <td>Ann&eacute;e de production</td>
                    <td>Synopsis</td>
                </tr>
            <c:forEach items="${mesSeries}" var="maSerie">
                <tr>
                    <td>${maSerie.titre}</td> 
                    <td>${maSerie.annee}</td>
                    <td>${maSerie.synopsis}</td>
                    <td> <input type="button" value="Modifier" onclick="modifierSerie(${maSerie.id})"/> &nbsp; <input type="button" value="Supprimer" onclick="supprimerSerie(${maSerie.id})"/> </td>
                </tr>
            </c:forEach>
    </body>
</html>
