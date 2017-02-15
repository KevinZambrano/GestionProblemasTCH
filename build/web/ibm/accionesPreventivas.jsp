<%-- 
    Document   : accionesPreventivas
    Created on : Feb 8, 2017, 5:31:47 PM
    Author     : k.zambrano.torres
--%>

<%@page import="core.Preventiveaction"%>
<%@page import="dao.DaoPreventiveaction"%>
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
                <li class="active">Acciones Preventivas</li>
            </ol>
        </div>
        <br>
        <div class="table-responsive col-md-8 col-xs-8">
            <table class="table table-hover">
                <thead>
                <th>Descripcion</th>
                <th>Responsable</th>
                <th>Persona Responsable</th>
                <th>Linea de Servicio</th>
                <th>Fecha de termino</th>
                <th>Estado</th>
                </thead>
                <tbody>
                    <%
                        DaoPreventiveaction daoPreventiveaction = new DaoPreventiveaction();
                        String id = request.getParameter("id");
                        for(Preventiveaction pa : daoPreventiveaction.lista()){
                            if(pa.getIdproblema()==Integer.parseInt(id)){
                        
                    %>
                    <tr>
                        <td><%=pa.getDescripcion()%></td>
                        <td><%=pa.getResponsable()%></td>
                        <td><%=pa.getPersonaresponsable()%></td>
                        <td><%=pa.getLineaservicio()%></td>
                        <td><%=pa.getFechatermino()%></td>
                        <td><%=pa.getEstado()%></td>
                    </tr>
                    <%
                            }
                        }
                    %>
                </tbody>
            </table>
                <button class="btn btn-info" value="Agregar Tarea" onclick="location='agregarTarea.jsp?idpbi=<%=id%>'">Agregar Tarea</button>
        </div>
    </body>
</html>
