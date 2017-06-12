<%-- 
    Document   : msj
    Created on : 12-jun-2017, 0:00:48
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
        <title>sigeeac</title>
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:regular,bold,italic,thin,light,bolditalic,black,medium&amp;lang=en">
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <link rel="stylesheet" href="https://code.getmdl.io/1.3.0/material.teal-red.min.css">
        <link rel="stylesheet" href="<%=context_path%>/static/css/list.css" />
        <link rel="stylesheet" href="<%=context_path%>/static/css/bootstrap.min.css" />
    </head>
    <body>
        <h1>${mensaje}!</h1>
        <a href="<%=context_path%>/instGob/list">Aceptar</a>
        <div class="demo-layout mdl-layout mdl-layout--fixed-header mdl-js-layout mdl-color--grey-100">
            <header class="demo-header mdl-layout__header mdl-layout__header--scroll mdl-color--grey-100 mdl-color-text--grey-800">
                <div class="mdl-layout__header-row">
                    <span class="mdl-layout-title">INSTITUCIONES GUBERNAMENTALES</span>
                    <div class="mdl-layout-spacer"></div>
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--expandable">
                    </div>
                </div>
            </header>
            <div class="demo-ribbon"></div>
            <main class="demo-main mdl-layout__content">
                <div class="demo-container mdl-grid">
                    <div class="mdl-cell mdl-cell--2-col mdl-cell--hide-tablet mdl-cell--hide-phone"></div>
                    <div class="demo-content mdl-color--white mdl-shadow--4dp content mdl-color-text--grey-800 mdl-cell mdl-cell--8-col">
                        <div class="demo-crumbs mdl-color-text--grey-500">
                            <a href="<%=context_path%>/instGob/add">Nuevo registro</a>
                        </div>
                        <!-- Mini FAB button -->
                        <button class="mdl-button mdl-js-button mdl-button--fab mdl-button--mini-fab" href="<%=context_path%>/welcome">
                            <i class="material-icons">add</i>
                        </button>
                        <h3>Institucion Gubernamental</h3>
                        <div class="page-content">
                            <!-- Your content goes here -->
                            <table class="table table-sm">
                                <thead>
                                    <tr>
                                        <th>ID</th>
                                        <th>CODIGO</th>
                                        <th>NOMBRE</th>
                                        <th>DIRECCION</th>
                                        <th>TELEFONO</th>
                                        <th>EMAIL</th>
                                        <th>DESCRIPCION</th>
                                        <th>OPCIONES</th>
                                    </tr>
                                </thead>
                                <tbody>
                                <c:forEach var="item" items="${institucion}">
                                    <tr>
                                        <td scope="row"><c:out value="${item.ingId}"/></td>
                                    <td ><c:out value="${item.ingCodigo}"/></td>
                                    <td ><c:out value="${item.ingNombre}"/></td>
                                    <td ><c:out value="${item.ingDireccion}"/></td>
                                    <td ><c:out value="${item.ingTelefono}"/></td>
                                    <td ><c:out value="${item.ingCorreoElectronico}"/></td>
                                    <td ><c:out value="${item.ingDescripcion}"/></td>
                                    <td >
                                        <a class="btn glyphicon glyphicon-pencil" href="<%=context_path%>/instGob/updateform/${item.ingId}">Editar</a>
                                        <a class="btn glyphicon glyphicon-remove" href="<%=context_path%>/instGob/delete/${item.ingId}">Eliminar</a>
                                    </td>
                                    </tr>
                                </c:forEach>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>

            </main>
        </div>
        <footer class="mdl-mini-footer footerfixed">
            <div class="mdl-mini-footer__left-section">
                <div class="mdl-logo">Title</div>
                <ul class="mdl-mini-footer__link-list">
                    <li><a href="#">Help</a></li>
                    <li><a href="#">Privacy & Terms</a></li>
                    <li><a href="#">User Agreement</a></li>
                </ul>
            </div>
        </footer>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="<%=context_path%>/static/js/bootstrap.min.js"></script>
    </body>
</html>
