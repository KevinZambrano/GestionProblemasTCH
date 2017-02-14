<%-- 
    Document   : agregarAnotacion
    Created on : Feb 7, 2017, 10:33:45 AM
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
                
                <form class="navbar-form navbar-left" role="search">
                    <div class="form-group">
                        <input type="text" class="form-control" placeholder="Ingresar ID problema...">
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
         <%
            String id = request.getParameter("id");
            Integer.parseInt(id);
        %>
        <div class="col-md-12">
            <ol class="breadcrumb">
                <li><a href="../index.html">Inicio</a></li>
                <li><a href="listaProblemas.jsp">Lista de Problemas</a></li>
                <li><a href="detallePBI.jsp?id=<%=id%>">Anotaciones PBI</a></li>
                <li class="active">Agregar Anotacion</li>
            </ol>
        </div>
        <br>
       
        <br>
        <div class="table-responsive col-md-12">
            <form action="../ServletAgregarAnotacion" method="post">
                <table class="table-hover">
                    <tr>
                        <td>ID problema: </td>
                        <td><input type="text" class="form-control" name="id" value="<%=id%>"></td>
                    </tr>
                    <tr>
                        <td>Descripcion: </td>
                        <td><textarea rows="4" class="form-control" name="txtDescripcion"></textarea></td>
                    </tr>
                    <tr>
                        <td><input type="submit"  class="btn btn-success" value="Agregar Anotacion"></td>
                    </tr>
                </table>
            </form>
        </div>
    </body>
</html>
