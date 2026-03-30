<%-- 
    Document   : pagPedidosAdmin
    Created on : 29/03/2026, 5:43:24 p. m.
    Author     : garfi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Pedidos Admin - Ecommerce</title>
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
                            <a href="gestionCatalogo.jsp" class="menu-item">
                                <img src="../imgs/catalogo.png" alt="Catálogo" class="menu-icon">
                                <span>Gestión de catálogo</span>
                            </a>
                        </li>
                        <li>
                            <a href="pagPedidosAdmin.jsp" class="menu-item active">
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
                <div class="pedidos-wrapper">
                    <div class="page-header">
                        <h1>Pedidos (Admin)</h1>
                        <div class="search-container">
                            <input type="text" class="search-input" placeholder="Buscar pedidos...">
                        </div>
                    </div>

                    <div class="tabla-pedidos-container">
                        <table class="tabla-pedidos">
                            <thead>
                                <tr>
                                    <th>Número de pedido</th>
                                    <th>Correo del cliente</th>
                                    <th>Estado</th>
                                    <th>Acción</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>1001</td>
                                    <td>cliente1@email.com</td>
                                    <td><span class="estado-pedido estado-pendiente">Pendiente</span></td>
                                    <td><a href="#" class="btn-actualizar">Actualizar</a></td>
                                </tr>
                                <tr>
                                    <td>1002</td>
                                    <td>cliente2@email.com</td>
                                    <td><span class="estado-pedido estado-enviado">Enviado</span></td>
                                    <td><a href="#" class="btn-actualizar">Actualizar</a></td>
                                </tr>
                                <tr>
                                    <td>1003</td>
                                    <td>cliente3@email.com</td>
                                    <td><span class="estado-pedido estado-entregado">Entregado</span></td>
                                    <td><a href="#" class="btn-actualizar">Actualizar</a></td>
                                </tr>
                            </tbody>
                        </table>
                    </div>

                    <div class="pagination-container">
                        <span class="pagination-info">Mostrando 1 a 3 de 15 pedidos</span>
                        <div class="pagination-buttons">
                            <button class="btn-pagination" disabled>Anterior</button>
                            <button class="btn-pagination">Siguiente</button>
                        </div>
                    </div>
                </div>
            </main>
        </div>

        <footer class="pie-pagina">
            <p>Aplicaciones Web – Unidad 2</p>
        </footer>
    </body>
</html>
