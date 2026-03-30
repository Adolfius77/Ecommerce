<%-- 
    Document   : crearProducto
    Created on : 29/03/2026, 5:26:41 p. m.
    Author     : garfi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Crear Producto - Ecommerce</title>
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
                        <a href="resenasAdmin.html" class="menu-item">
                            <img src="../imgs/ticket.png" alt="Reseñas" class="menu-icon">
                            <span>Gestion de reseñas</span>
                        </a>
                    </li>
                    <li>
                        <a href="crearProducto.html" class="menu-item active">
                            <img src="../imgs/perfil.png" alt="Admin" class="menu-icon">
                            <span>Administrador</span>
                        </a>
                    </li>
                </ul>
            </nav>
        </aside>

        <main class="contenido">
            <div class="producto-wrapper">
                <div class="producto-header">
                    <h1>Crear Nuevo Producto</h1>
                    <p class="subtitulo">Añade los detalles del nuevo producto para el catálogo.</p>
                </div>

                <form class="producto-form">
                    <div class="form-content">
                        <div class="form-fields">
                            <div class="campo-producto">
                                <label for="nombre">Nombre del producto</label>
                                <input type="text" id="nombre" placeholder="Ej. Camiseta Algodón Premium">
                            </div>

                            <div class="campo-producto">
                                <label for="descripcion">Descripción</label>
                                <textarea id="descripcion" rows="4" placeholder="Describe las características del producto..."></textarea>
                            </div>

                            <div class="campos-fila">
                                <div class="campo-producto">
                                    <label for="precio">Precio</label>
                                    <input type="text" id="precio" value="$ 0.00">
                                </div>
                                <div class="campo-producto">
                                    <label for="cantidad">Cantidad en stock</label>
                                    <input type="number" id="cantidad" value="0">
                                </div>
                            </div>

                            <div class="botones-producto">
                                <a href="gestionCatalogo.html" class="btn-cancelar">Cancelar</a>
                                <button type="submit" class="btn-añadir">Añadir producto</button>
                            </div>
                        </div>

                        <div class="imagen-upload">
                            <div class="imagen-placeholder">
                                <div class="imagen-icono">🖼️</div>
                                <span>Agregar Imagen</span>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </main>
    </div>

    <footer class="pie-pagina">
        <p>Aplicaciones Web – Unidad 2</p>
    </footer>
</body>
</html>
