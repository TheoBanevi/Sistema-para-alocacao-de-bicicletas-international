<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f" %>
<f:bundle basename="i18n.mensagens">
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title><f:message key="show.client.title"/></title>
        <link rel="stylesheet" type="text/css" href="estilo.css" />
    </head>
    <body>
        <h1>Clientes</h1>
        <hr>
        <c:if test="${empty requestScope.listaClientes}">
            <f:message key="show.client.test.label"/>
        </c:if>
        <c:if test="${!empty requestScope.listaClientes}">
            <table>
                <tr>
                    <th><f:message key="show.client.info1.label"/></th>
                    <th><f:message key="show.client.info2.label"/></th>
                </tr>
                <c:forEach items="${requestScope.listaClientes}" var="cliente">
                    <tr>
                        <td>${cliente.email}</td> 
                        <td>${cliente.nome}</td>
                        <td><a href="deletaCliente?id=<c:out value='${cliente.id}' />"><f:message key="show.client.option1.label"/></a></td>
                        <td><a href="editaCliente?id=<c:out value='${cliente.id}' />"><f:message key="show.client.option2.label"/></a></td>
                    </tr>
                </c:forEach>
            </table>
        </c:if>
            
            <a href="adicionaCliente"><f:message key="show.client.option3.label"/></a>
    </body>
</html>
</f:bundle>