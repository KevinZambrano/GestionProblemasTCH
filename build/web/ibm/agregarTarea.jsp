<%-- 
    Document   : agregarTarea
    Created on : Feb 8, 2017, 5:59:45 PM
    Author     : k.zambrano.torres
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    <link rel="stylesheet" href="../css/bootstrap.css">
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

                <form class="navbar-form navbar-left" role="search" action="ServletBuscarProblema" method="get">
                    <div class="form-group">
                        <input type="text" name="buscarPorID" class="form-control" placeholder="Ingresar ID problema...">
                    </div>
                    <button type="submit" class="btn btn-default">Buscar</button>
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
                <li><a href="listaProblemas.jsp">Lista de problemas</a></li>
                <li class="active">Agregar Tarea</li>
            </ol>
        </div>
         <%
            String idpbi = request.getParameter("idpbi");
        %>
        <div class="table-responsive col-md-6">
            <form action="../ServletAgregarTarea" method="post">
                <table class="table table-hover">
                    <tr>
                        <td>Id Problema: </td>
                        <td><input type="text" value="<%=idpbi%>" class="form-control" name="txtIdProblema"></td>
                    </tr>
                    <tr>
                        <td>Descripcion: </td>
                        <td><textarea type="text" rows="5" class="form-control" name="txtDescripcion"></textarea></td>
                    </tr>
                     <tr>
                        <td>Responsable: </td>
                        <td><input type="text" class="form-control" name="txtResponsable"></td>
                    </tr>
                    <tr>
                        <td>Persona responsable: </td>
                        <td><input type="text" class="form-control" name="txtPersonaResponsable"></td>
                    </tr>
                    <tr>
                        <td>Linea de servicio: </td>
                        <td><input type="text" class="form-control" name="txtLineaServicio"></td>
                    </tr>
                    <tr>
                        <td>Fecha Termino: </td>
                        <td><input type="date" class="form-control" name="txtFechaTermino"></td>
                    </tr>
                    <tr>
                        <td>Estado: </td>
                        <td><input type="text" class="form-control" name="txtEstado"></td>
                    </tr>
                    <tr>
                        <td><input type="submit" class="btn btn-success" value="Agregar Tarea"></td>
                    </tr>
                </table>
            </form>
            
        </div>
    </body>
</html>
