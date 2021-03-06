<%-- 
    Document   : novaLocadora
    Created on : 22/04/2019, 04:59:53
    Author     : pedro
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f" %>
<f:bundle basename="i18n.mensagens">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title><f:message key="new.rental.store.title"/></title>
    </head>
    <body>
        <sec:authorize access="hasRole('ADMIN')">
              <c:if test="${cliente != null}">
                <form action="atualizaLocadora">
            </c:if>
            <c:if test="${cliente == null}">
                <form action="novaLocadora">
            </c:if>
            <fieldset>

                <!-- Form Name -->
                <legend><f:message key="new.rental.store.form.legend"/></legend>
                
                <c:if test="${locadora != null}">
                    <div class="form-group">
                    <label class="col-md-4 control-label" for="id"><f:message key="new.rental.store.info1.label"/></label>  
                    <div class="col-md-4">
                        <input id="id" name="id" type="hidden" placeholder="ID" class="form-control input-md" required="" value="${locadora.id}">
                    </div>
                </div>
                </c:if>

                <!-- Text input-->
                <div class="form-group">
                    <label class="col-md-4 control-label" for="nome"><f:message key="new.rental.store.info2.label"/></label>  
                    <div class="col-md-4">
                        <input id="nome" name="nome" type="text" placeholder="Nome" class="form-control input-md" required=""value="${locadora.nome}">

                    </div>
                </div>

                <!-- Text input-->
                <div class="form-group">
                    <label class="col-md-4 control-label" for="email"><f:message key="new.rental.store.info3.label"/></label>  
                    <div class="col-md-4">
                        <input id="email" name="email" type="text" placeholder="Email" class="form-control input-md" required="" value="${locadora.email}">

                    </div>
                </div>

                <!-- Password input-->
                <div class="form-group">
                    <label class="col-md-4 control-label" for="senha"><f:message key="new.rental.store.info4.label"/></label>
                    <div class="col-md-4">
                        <input id="senha" name="senha" type="password" placeholder="senha" class="form-control input-md" required="" value="${locadora.senha}">

                    </div>
                </div>

                <!-- Text input-->
                <div class="form-group">
                    <label class="col-md-4 control-label" for="cnpj"><f:message key="new.rental.store.info5.label"/></label>  
                    <div class="col-md-4">
                        <input id="cnpj" name="cnpj" type="text" placeholder="CNPJ" class="form-control input-md" required="" value="${locadora.cnpj}">

                    </div>
                </div>


                <!-- Text input-->
                <div class="form-group">
                    <label class="col-md-4 control-label" for="cidade"><f:message key="new.rental.store.info6.label"/></label>  
                    <div class="col-md-4">
                        <input id="cidade" name="cidade" type="text" placeholder="Cidade" class="form-control input-md" value="${locadora.cidade}">

                    </div>
                </div>
                <br>

                <!-- Button -->
                <div class="form-group">
                    <label class="col-md-4 control-label" for="submit"></label>
                    <div class="col-md-4">
                        <button id="submit" type="submit" name="submit" class="btn btn-primary"><f:message key="new.rental.store.save.label"/></button>
                    </div>
                </div>

            </fieldset>
        </form>
            </sec:authorize>

    </body>
</html>
</f:bundle>
