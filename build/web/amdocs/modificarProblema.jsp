<%-- 
    Document   : modificarProblema
    Created on : Feb 7, 2017, 2:39:52 PM
    Author     : k.zambrano.torres
--%>

<%@page import="dao.DaoProblema"%>
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
                <a class="navbar-brand" href="index.html">Inicio</a>
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
        <%
            String id = request.getParameter("id");
            DaoProblema daoProblema = new DaoProblema();
        %>
        <div class="table-responsive col-md-6">
            <form action="ServletModificarProblema" method="post">
                <table class="table table-hover">
                    <tr>
                        <td>Id Problema: </td>
                        <td><input type="number" name="txtIdProblema" class="form-control" value="<%=daoProblema.buscar(Integer.parseInt(id)).getIdProblema()%>"></td>
                    </tr>
                    <tr>
                        <td>Estado: </td>
                        <td><input type="text" name="txtEstado" class="form-control" value="<%=daoProblema.buscar(Integer.parseInt(id)).getEstado()%>"></td>
                    </tr>
                    <tr>
                        <td>Resumen: </td>
                        <td><textarea class="form-control" rows="3" name="txtResumen" value="<%=daoProblema.buscar(Integer.parseInt(id)).getResumen()%>"></textarea>
                    </tr>
                    <tr>
                        <td>Grupo Asignado: </td>
                        <td><input type="text" name="txtGrupoAsignado" class="form-control" value="<%=daoProblema.buscar(Integer.parseInt(id)).getGrupoAsignado()%>"></td>
                    </tr>
                    <tr>
                        <td>Usuario Asignado: </td>
                        <td><input type="text" name="txtUsuarioAsignado" class="form-control" value="<%=daoProblema.buscar(Integer.parseInt(id)).getUsuarioAsignado()%>"></td>
                    </tr>
                    <tr>
                        <td>Fecha Deseada: </td>
                        <td><input type="date" name="txtFechaDeseada" class="form-control" value="<%=daoProblema.buscar(Integer.parseInt(id)).getFechaDeseada()%>"></td>
                    </tr>
                    <tr>
                        <td>Prioridad: </td>
                        <td>
                            <select name="txtPrioridad" class="form-control">
                                <option value="Critica">Critica</option>
                                <option value="Alta">Alta</option>
                                <option value="Media">Media</option>
                                <option value="Baja">Baja</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td><input type="submit" name="btnModificarProblema" class="btn btn-success" value="Guardar Cambios"></td>                    
                    </tr>

                </table>
            </form>
        </div>
    </body>
</html>
