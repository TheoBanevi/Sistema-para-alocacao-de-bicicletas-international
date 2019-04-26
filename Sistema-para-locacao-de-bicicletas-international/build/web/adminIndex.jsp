<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f" %>
<f:bundle basename="i18n.mensagens">
<html>
    <body>
        <h2><f:message key="welcome.user.label"/>
            <%=request.getUserPrincipal().getName().toString()%>
        </h2>

        <sec:authorize access="hasRole('ADMIN')">
            <f:message key="description.admin.label"/>
             <br/><br/>

            <a href="admin/verCliente"><f:message key="admin.option1.label"/></a>
            <br>
            <a href="admin/verLocadora"><f:message key="admin.option2.label"/></a>
        </sec:authorize>

        <sec:authorize access="hasRole('USER')">
           <f:message key="description.user.label"/>
            <br/><br/>

            <a href="user/verLocacoesCliente?nome=<%=request.getUserPrincipal().getName()%>"><f:message key="user.option1.label"/></a>
        </sec:authorize>
            <br>
            <a href="logout"><f:message key="user.option2.label"/></a>
    </body>
</html>
</f:bundle>