<%-- 
    Document   : homepage
    Created on : 25 mars 2016, 10:47:50
    Author     : admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Streaming</title>
        <link href="<c:url value="/resources/css/style.css"></c:url>" rel="stylesheet" type="text/css"/>
        <script src="<c:url value="/resources/JS/jquery-2.2.2.js"></c:url>" type="text/javascript"></script>
            <script type="text/javascript">
            var path = "<c:url value="/"></c:url>";
            </script>
        <script src="<c:url value="/resources/JS/homepage.js"></c:url>" type="text/javascript"></script>
        <script src="<c:url value="/resources/JS/films.js"></c:url>" type="text/javascript"></script>
        <script src="<c:url value="/resources/JS/genre.js"></c:url>" type="text/javascript"></script>
        <script src="<c:url value="/resources/JS/serie.js"></c:url>" type="text/javascript"></script>
    </head>
    <body onload="onload()">
        <c:import url="_TITRE.jsp"/>
        <div class="menu">
            <span onclick="loadFilms()">Films</span>
            <span onclick="loadSeries()">S&eacute;ries</span>
            <span onclick="loadGenres()">Genres</span>
        </div>
        <div class="sablier"><img src="<c:url value="resources/css/sablier.GIF"></c:url>" alt=""/></div>
        
        <div class="contenu">
            coucou
        </div>

        <c:import url="_PIED.jsp"/>
    </body>
</html>
