<%-- 
    Document   : gestionCatalogo
    Created on : 29/03/2026, 5:37:58 p. m.
    Author     : garfi
--%>

<%@page import="java.util.List"%>
<%@page import="modelo.Producto"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    List<Producto> productos = (List<Producto>) request.getAttribute("productos");
%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Gestión de Catálogo - Ecommerce</title>
        <link rel="stylesheet" type="text/css" href="../assets/stylesAdmin.css">
    </head>
    <body>
        <header class="barra-superior">
            <div class="header-left">
                <a href="#" class="logo-link">
                    <img src="../imgs/logo.png" alt="Logo" class="logo-img">
                    <span class="logo-text">Ecommerce</span>
                </a>
            </div>
            <div class="header-right">
                <div class="icons">
                    <a href="perfilUsuario.jsp" class="icon">
                        <img src="../imgs/perfil.png" alt="Perfil">
                    </a>
                    <a href="#" class="icon">
                        <img src="../imgs/salir.png" alt="Salir">
                    </a>
                </div>
            </div>
        </header>

        <div class="container">
            <aside class="menu-lateral">
                <nav>
                    <ul>
                        <li>
                            <a href="indexAdmin.jsp" class="menu-item">
                                <img src="../imgs/inicio.png" alt="Inicio" class="menu-icon">
                                <span>Inicio</span>
                            </a>
                        </li>
                        <li>
                            <a href="gestionUsuariosAdmin.jsp" class="menu-item">
                                <img src="../imgs/perfil.png" alt="Usuarios" class="menu-icon">
                                <span>Gestión de usuarios</span>
                            </a>
                        </li>
                        <li>
                            <a href="gestionCatalogo.jsp" class="menu-item active">
                                <img src="../imgs/catalogo.png" alt="Catálogo" class="menu-icon">
                                <span>Gestión de catálogo</span>
                            </a>
                        </li>
                        <li>
                            <a href="pagPedidosAdmin.jsp" class="menu-item">
                                <img src="../imgs/pedidos.png" alt="Pedidos" class="menu-icon">
                                <span>Gestión de pedidos</span>
                            </a>
                        </li>
                        <li>
                            <a href="resenasAdmin.jsp" class="menu-item">
                                <img src="../imgs/ticket.png" alt="Reseñas" class="menu-icon">
                                <span>Gestion de reseñas</span>
                            </a>
                        </li>
                        <li>
                            <a href="crearProducto.jsp" class="menu-item">
                                <img src="../imgs/perfil.png" alt="Admin" class="menu-icon">
                                <span>Administrador</span>
                            </a>
                        </li>
                    </ul>
                </nav>
            </aside>

            <main class="contenido">
                <div class="catalogo-wrapper">
                    <div class="catalogo-header">
                        <h1>Gestión de catálogo (Admin)</h1>
                        <a href="crearProducto.jsp" class="btn-crear-producto">+ Crear producto</a>
                    </div>

                    <div class="tabla-catalogo-container">
                        <table class="tabla-catalogo">
                            <thead>
                                <tr>
                                    <th>ID</th>
                                    <th>Producto</th>
                                    <th>Categoría</th>
                                    <th>Precio</th>
                                    <th>Stock</th>
                                    <th>Acciones</th>
                                </tr>
                            </thead>
                            <tbody>
                                <% if (productos != null && !productos.isEmpty()) { 
                                    for (Producto p : productos) { %>
                                <tr>
                                    <td><%= p.getId().toString().substring(18) %>...</td>
                                    <td><%= p.getNombre() %></td>
                                    <td><a href="#" class="categoria-link"><%= p.getCategoria() %></a></td>
                                    <td>$<%= String.format("%.2f", p.getPrecio()) %></td>
                                    <td><%= p.getStock() %></td>
                                    <td class="acciones-catalogo">
                                        <a href="../ProductoServlet?accion=editar&id=<%= p.getId() %>" class="btn-editar" title="Editar">✏️</a>
                                        <a href="../ProductoServlet?accion=eliminar&id=<%= p.getId() %>" class="btn-eliminar" title="Eliminar" onclick="return confirm('¿Estás seguro de eliminar este producto?')">🗑️</a>
                                    </td>
                                </tr>
                                <% } 
                                } else { %>
                                <tr>
                                    <td colspan="6" style="text-align: center; padding: 20px;">No hay productos registrados</td>
                                </tr>
                                <% } %>
                            </tbody>
                        </table>
                    </div>
                </div>
            </main>
        </div>

        <footer class="pie-pagina">
            <p>Aplicaciones Web – Unidad 2</p>
        </footer>
    </body>
</html>
