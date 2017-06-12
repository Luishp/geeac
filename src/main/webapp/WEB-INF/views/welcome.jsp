<%-- 
    Document   : welcome
    Created on : 09-jun-2017, 23:58:20
    Author     : luish
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String context_path = request.getContextPath().toString();
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SIGEEAC</title>
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <link rel="stylesheet" href="https://code.getmdl.io/1.3.0/material.indigo-pink.min.css">
        <script defer src="https://code.getmdl.io/1.3.0/material.min.js"></script>
        <link rel="stylesheet" href="<%=context_path%>/static/css/list.css" />
        <link rel="stylesheet" href="<%=context_path%>/static/css/bootstrap.min.css" />
    </head>
    <body>
        <div class="mdl-layout mdl-js-layout mdl-layout--fixed-drawer
             mdl-layout--fixed-header">
            <header class="mdl-layout__header">
                <div class="mdl-layout__header-row">
                    <div class="mdl-layout-spacer"></div>
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--expandable
                         mdl-textfield--floating-label mdl-textfield--align-right">
                        <label class="mdl-button mdl-js-button mdl-button--icon"
                               for="fixed-header-drawer-exp">
                            <i class="material-icons">search</i>
                        </label>
                        <div class="mdl-textfield__expandable-holder">
                            <input class="mdl-textfield__input" type="text" name="sample"
                                   id="fixed-header-drawer-exp">
                        </div>
                    </div>
                </div>
            </header>
            <div class="mdl-layout__drawer">
                <span class="mdl-layout-title">SIGEEAC</span>
                <nav class="mdl-navigation">
                    <a class="mdl-navigation__link" href="">Administracion</a>
                    <a class="mdl-navigation__link" href="<%=context_path%>/instGob/list">Instituciones</a>
                    <a class="mdl-navigation__link" href="">Solicitudes</a>
                    <a class="mdl-navigation__link" href=""></a>
                </nav>
            </div>
            <main class="mdl-layout__content">
                <div class="page-content"><!-- Your content goes here --></div>
            </main>
        </div>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="<%=context_path%>/static/js/bootstrap.min.js"></script>
    </body>
</html>
