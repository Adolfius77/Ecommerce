<%-- 
    Document   : resenasAdmin
    Created on : 29/03/2026, 5:46:05 p. m.
    Author     : garfi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Gestión de Reseñas - Ecommerce</title>
        <link rel="stylesheet" href="../stylesAdmin.css">
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
                    <a href="perfilUsuario.html" class="icon">
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
                            <a href="indexAdmin.html" class="menu-item">
                                <img src="../imgs/inicio.png" alt="Inicio" class="menu-icon">
                                <span>Inicio</span>
                            </a>
                        </li>
                        <li>
                            <a href="gestionUsuariosAdmin.html" class="menu-item">
                                <img src="../imgs/perfil.png" alt="Usuarios" class="menu-icon">
                                <span>Gestión de usuarios</span>
                            </a>
                        </li>
                        <li>
                            <a href="gestionCatalogo.html" class="menu-item">
                                <img src="../imgs/catalogo.png" alt="Catálogo" class="menu-icon">
                                <span>Gestión de catálogo</span>
                            </a>
                        </li>
                        <li>
                            <a href="pagPedidosAdmin.html" class="menu-item">
                                <img src="../imgs/pedidos.png" alt="Pedidos" class="menu-icon">
                                <span>Gestión de pedidos</span>
                            </a>
                        </li>
                        <li>
                            <a href="resenasAdmin.html" class="menu-item active">
                                <img src="../imgs/ticket.png" alt="Reseñas" class="menu-icon">
                                <span>Gestion de reseñas</span>
                            </a>
                        </li>
                        <li>
                            <a href="crearProducto.html" class="menu-item">
                                <img src="../imgs/perfil.png" alt="Admin" class="menu-icon">
                                <span>Administrador</span>
                            </a>
                        </li>
                    </ul>
                </nav>
            </aside>

            <main class="contenido">
                <div class="resenas-wrapper">
                    <div class="page-header">
                        <h1>Gestión de Reseñas</h1>
                        <div class="search-container">
                            <input type="text" class="search-input" placeholder="Buscar reseñas...">
                        </div>
                    </div>

                    <div class="tabla-resenas-container">
                        <table class="tabla-resenas">
                            <thead>
                                <tr>
                                    <th>Usuario</th>
                                    <th>Producto</th>
                                    <th>Calificación</th>
                                    <th>Comentario</th>
                                    <th>Fecha</th>
                                    <th>Acción</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>Juan Pérez</td>
                                    <td>Laptop Pro 15"</td>
                                    <td>
                                        <span class="estrellas">
                                            <span class="estrella llena">★</span>
                                            <span class="estrella llena">★</span>
                                            <span class="estrella llena">★</span>
                                            <span class="estrella llena">★</span>
                                            <span class="estrella llena">★</span>
                                        </span>
                                        <span class="calificacion-num">5.0</span>
                                    </td>
                                    <td class="comentario-celda">Excelente producto, muy rápido...</td>
                                    <td>12 Oct 2023</td>
                                    <td><a href="#" class="btn-eliminar-resena">Eliminar</a></td>
                                </tr>
                                <tr>
                                    <td>Ana Gómez</td>
                                    <td>Libro Cálculo I</td>
                                    <td>
                                        <span class="estrellas">
                                            <span class="estrella llena">★</span>
                                            <span class="estrella llena">★</span>
                                            <span class="estrella llena">★</span>
                                            <span class="estrella llena">★</span>
                                            <span class="estrella vacia">★</span>
                                        </span>
                                        <span class="calificacion-num">4.0</span>
                                    </td>
                                    <td class="comentario-celda">Buen estado, pero llegó con una...</td>
                                    <td>10 Oct 2023</td>
                                    <td><a href="#" class="btn-eliminar-resena">Eliminar</a></td>
                                </tr>
                                <tr>
                                    <td>Carlos Ruiz</td>
                                    <td>Mochila Universitaria</td>
                                    <td>
                                        <span class="estrellas">
                                            <span class="estrella llena">★</span>
                                            <span class="estrella llena">★</span>
                                            <span class="estrella vacia">★</span>
                                            <span class="estrella vacia">★</span>
                                            <span class="estrella vacia">★</span>
                                        </span>
                                        <span class="calificacion-num">2.0</span>
                                    </td>
                                    <td class="comentario-celda">El cierre se rompió a la primera...</td>
                                    <td>08 Oct 2023</td>
                                    <td><a href="#" class="btn-eliminar-resena">Eliminar</a></td>
                                </tr>
                                <tr>
                                    <td>María Silva</td>
                                    <td>Calculadora Científica</td>
                                    <td>
                                        <span class="estrellas">
                                            <span class="estrella llena">★</span>
                                            <span class="estrella llena">★</span>
                                            <span class="estrella llena">★</span>
                                            <span class="estrella llena">★</span>
                                            <span class="estrella llena">★</span>
                                        </span>
                                        <span class="calificacion-num">5.0</span>
                                    </td>
                                    <td class="comentario-celda">Indispensable para ingeniería...</td>
                                    <td>05 Oct 2023</td>
                                    <td><a href="#" class="btn-eliminar-resena">Eliminar</a></td>
                                </tr>
                            </tbody>
                        </table>
                    </div>

                    <div class="pagination-container">
                        <span class="pagination-info">Mostrando 1 a 4 de 24 reseñas</span>
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
