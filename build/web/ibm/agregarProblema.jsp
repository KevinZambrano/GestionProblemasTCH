<%-- 
    Document   : agregarProblema
    Created on : Feb 6, 2017, 10:06:57 AM
    Author     : k.zambrano.torres
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="../css/bootstrap.css">
        <script type="text/javascript" src="../js/collapse.js"></script>
    </head>
    <body>
        <nav class="navbar navbar-default" role="navigation">
            <!-- El logotipo y el icono que despliega el menú se agrupan
                 para mostrarlos mejor en los dispositivos móviles -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse"
                        data-target=".navbar-ex1-collapse">
                    <span class="sr-only">Desplegar navegación</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="../index.html">Inicio</a>
            </div>

            <!-- Agrupar los enlaces de navegación, los formularios y cualquier
                 otro elemento que se pueda ocultar al minimizar la barra -->
            <div class="collapse navbar-collapse navbar-ex1-collapse">
                <ul class="nav navbar-nav">
                    <li class="active"><a href="agregarProblema.jsp">AgregarProblema</a></li>
                    <li><a href="listaProblemas.jsp">Ver Problemas</a></li>
                   <!-- <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                            Menú #1 <b class="caret"></b>
                        </a>
                        <ul class="dropdown-menu">
                            <li><a href="#">Acción #1</a></li>
                            <li><a href="#">Acción #2</a></li>
                            <li><a href="#">Acción #3</a></li>
                            <li class="divider"></li>
                            <li><a href="#">Acción #4</a></li>
                            <li class="divider"></li>
                            <li><a href="#">Acción #5</a></li>
                        </ul>
                    </li>-->
                </ul>
                
               <!-- <form class="navbar-form navbar-left" role="search">
                    <div class="form-group">
                        <input type="text" class="form-control" placeholder="Buscar">
                    </div>
                    <button type="submit" class="btn btn-default">Enviar</button>
                </form>

                <!--<ul class="nav navbar-nav navbar-right">
                    <li><a href="#">Enlace #3</a></li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                            Menú #2 <b class="caret"></b>
                        </a>
                        <ul class="dropdown-menu">
                            <li><a href="#">Acción #1</a></li>
                            <li><a href="#">Acción #2</a></li>
                            <li><a href="#">Acción #3</a></li>
                            <li class="divider"></li>
                            <li><a href="#">Acción #4</a></li>
                        </ul>
                -->
                    </li>
                </ul>
            </div>
        </nav>
        <br>
        <div class="col-md-12">
            <ol class="breadcrumb">
                <li><a href="../index.html">Inicio</a></li>
                <li class="active">Agregar Problema</li>
            </ol>
        </div>
        <br>
        <br>
        <%
            String idpbi = request.getParameter("idpbi");
        %>
        <div class="table-responsive col-md-6">
        <form action="../ServletAgregarProblemaIBM" method="post">
            <table class="table table-hover">
                <tr>
                    <td>Id Problema: </td>
                    <td><input type="text" class="form-control" value="<%=idpbi%>" name="txtIdProblema"></td>
                </tr>
                <tr>
                    <td>Mes del Problema: </td>
                    <td><input type="text" class="form-control" name="txtMesProblema"></td>
                </tr>
                <tr>
                    <td>Estado: </td>
                    <td><input type="text" class="form-control" name="txtEstado"></td>
                </tr>
                <tr>
                    <td>Descripcion: </td>
                    <td><textarea type="text" class="form-control" rows="5" name="txtDescripcion"></textarea></td>
                </tr>
                <tr>
                    <td>Fecha de Entrega Real: </td>
                    <td><input type="date" class="form-control" name="txtFechaEntregaReal"></td>
                </tr>
                <tr>
                    <td>Fecha Inicio de Incidente: </td>
                    <td><input type="date" class="form-control" name="txtFechaInicioIncidente"></td>
                </tr>
                <tr>
                    <td>Fecha Termino de Incidente: </td>
                    <td><input type="date" class="form-control" name="txtFechaTerminoIncidente"></td>
                </tr>
                <tr>
                    <td>Servicio Afectado: </td>
                    <td><input type="text" class="form-control" name="txtServicioAfectado"></td>
                </tr>
                
                <tr>
                    <td><input type="submit" name="btnAgregarProblema" class="btn btn-success" value="Agregar Problema"></td>
                </tr>
                
            </table>
        </form>
        </div>
    </body>
</html>
