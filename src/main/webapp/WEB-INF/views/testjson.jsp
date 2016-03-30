<%-- 
    Document   : testjson
    Created on : 30 mars 2016, 10:14:27
    Author     : admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script src="<c:url value="/resources/JS/jquery-2.2.2.js"></c:url>" type="text/javascript"></script>
        <script type="text/javascript">
            $.get("chargerjson", function(datajson){
                alert(datajson.id);
            })
        </script>
    </head>
    <body>
        <h1>Hello World!</h1>
    </body>
</html>
