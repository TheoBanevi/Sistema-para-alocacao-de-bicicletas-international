<%-- 
    Document   : index
    Created on : 22/04/2019, 10:21:40
    Author     : pedro
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f" %>
<f:bundle basename="i18n.mensagens">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title><f:message key="page.title"/></title>
    </head>
    <body>
        <h1><f:message key="welcome.label"/></h1>
        <a href="adminIndex.jsp"><f:message key="login.label"/></a>
        <br>
        <a href="todos/listaLocadorasCidade.jsp"><f:message key="rental.store.by.city.label"/></a>
        <br>
        <a href="todos/verLocadorasTodos"><f:message key="rental.store.label"/></a>
    </body>
</html>
</f:bundle>
