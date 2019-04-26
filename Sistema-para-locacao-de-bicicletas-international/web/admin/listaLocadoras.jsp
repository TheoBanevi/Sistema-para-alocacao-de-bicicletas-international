<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f" %>
<f:bundle basename="i18n.mensagens">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title><f:message key="show.rental.store.title"/></title>
        <link rel="stylesheet" type="text/css" href="estilo.css" />
    </head>
    <body>
        <h1><f:message key="show.rental.store.label"/></h1>
        <hr>
        <c:if test="${empty requestScope.listaLocadoras}">
            <f:message key="show.rental.store.test.label"/>
        </c:if>
        <c:if test="${!empty requestScope.listaLocadoras}">
            <table>
                <tr>
                    <th><f:message key="show.rental.store.info1.label"/></th>
                    <th><f:message key="show.rental.store.info2.label"/></th>
                </tr>
                <c:forEach items="${requestScope.listaLocadoras}" var="locadora">
                    <tr>
                        <td>${locadora.email}</td> 
                        <td>${locadora.nome}</td>
                        <sec:authorize access="hasRole('ADMIN')">
                        <td><a href="deletaLocadora?id=<c:out value='${locadora.id}' />"><f:message key="show.rental.store.option1.label"/></a></td>
                        <td><a href="editaLocadora?id=<c:out value='${locadora.id}' />"><f:message key="show.rental.store.option2.label"/></a></td>
                        </sec:authorize>
                    </tr>
                </c:forEach>
            </table>
        </c:if>
            <br>
            <a href="novaLocadora.jsp"><f:message key="show.rental.store.option3.label"/></a>
    </body>
</html>
</f:bundle>
