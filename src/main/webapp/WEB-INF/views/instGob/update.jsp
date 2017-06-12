<%-- 
    Document   : update
    Created on : 10-jun-2017, 22:03:19
    Author     : luish
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
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
        <link rel="stylesheet" href="<%=context_path%>/static/css/form.css" />
        <link rel="stylesheet" href="<%=context_path%>/static/css/bootstrap.min.css" />
        <style>
            #view-source {
                position: fixed;
                display: block;
                right: 0;
                bottom: 0;
                margin-right: 40px;
                margin-bottom: 40px;
                z-index: 900;
                min-height: 100px;
            }
            .footerfixed {
                position:fixed;
                left:0px;
                bottom:0px;
                width:100%;
            }
        </style>
    </head>
    <body>
        <div class="mdl-layout mdl-js-layout mdl-layout--fixed-header">
            <header class="demo-header mdl-layout__header mdl-layout__header--scroll mdl-color--grey-100 mdl-color-text--grey-800">
                <div class="mdl-layout__header-row">
                    <span class="mdl-layout-title">INSTITUCION GUBERNAMENTAL</span>
                    <div class="mdl-layout-spacer"></div>
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--expandable">
                    </div>
                </div>
            </header>
            <main class="mdl-layout__content">
                <div class="mdl-grid portfolio-max-width portfolio-contact">
                    <div class="mdl-cell mdl-cell--12-col mdl-card mdl-shadow--4dp">
                        <div class="mdl-card__title">
                            <h2 class="mdl-card__title-text">Nuevo registro</h2>
                        </div>
                        <div class="mdl-card__media">
                            <img class="article-image" src=" <%=context_path%>/static/images/header-bg.jpg" border="0" alt="">
                        </div>
                        <div class="mdl-card__supporting-text">
                            <p>
                                <a href="<%=context_path%>/instGob/list">Regresar</a>
                            </p>
                            <form action='<%=context_path%>/instGob/update' method='post'>
                                <table class='table table-hover table-responsive table-bordered'>
                                    <tr>
                                        <td><b>Estado de registro</b></td>
                                        <td>
                                            <select class='form-control'>
                                                <option value="0">Activo</option>
                                                <option value="1">Inactivo</option>
                                            </select> 
                                        </td>
                                    </tr>
                                    <tr>
                                        <td><b>Codigo Institucion</b></td>
                                        <td><input type='text' name='ingCodigo' class='form-control' value="${institucion.ingCodigo}" /></td>
                                    </tr>
                                    <tr>
                                        <td><b>Nombre Institucion</b></td>
                                        <td><input type='text' name='ingNombre' class='form-control' value="${institucion.ingNombre}" /></td>
                                    </tr>
                                    <tr>
                                        <td><b>Direccion</b></td>
                                        <td><input type='text' name='ingDireccion' class='form-control' value="${institucion.ingDireccion}" /></td>
                                    </tr>
                                    <tr>
                                        <td><b>Telefono</b></td>
                                        <td><input type='text' name='ingTelefono' class='form-control' value="${institucion.ingTelefono}" /></td>
                                    </tr>
                                    <tr>
                                        <td><b>Email</b></td>
                                        <td><input type='email' name='ingCorreoElectronico' class='form-control' value="${institucion.ingCorreoElectronico}" /></td>
                                    </tr>
                                    <tr>
                                        <td><b>Descripcion</b></td>
                                        <td><input type='text' name='ingDescripcion' class='form-control' value="${institucion.ingDescripcion}" /></td>
                                    </tr>
                                    <input type='hidden' id='id' rows='5' class='form-control' name='id' value="${institucion.ingId}"/>
                                    <tr>
                                        <td></td>
                                        <td>
                                            <button type="submit" class="btn btn-primary">Actualizar informacion de Institucion</button>
                                        </td>
                                    </tr>
                                </table>
                            </form>   
                        </div>
                    </div>
                </div>
            </main>
        </div>
        <script src="https://code.getmdl.io/1.3.0/material.min.js"></script>
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
    <script>
        $("select").val("${institucion.regActivo}");
    </script>
</body>
</html>