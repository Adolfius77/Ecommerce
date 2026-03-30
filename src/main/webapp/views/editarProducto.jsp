<%-- 
    Document   : editarProducto
    Created on : 29/03/2026, 5:37:14 p. m.
    Author     : garfi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Editar Producto - Ecommerce</title>
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
                            <a href="crearProducto.jsp" class="menu-item active">
                                <img src="../imgs/perfil.png" alt="Admin" class="menu-icon">
                                <span>Administrador</span>
                            </a>
                        </li>
                    </ul>
                </nav>
            </aside>

            <main class="contenido">
                <div class="editar-producto-wrapper">
                    <div class="editar-producto-header">
                        <h1>Editar Producto</h1>
                        <p class="subtitulo">Actualiza los detalles del producto seleccionado.</p>
                    </div>

                    <form class="editar-producto-form">
                        <div class="imagen-editar-container">
                            <div class="imagen-editar-placeholder">
                                <div class="imagen-icono">🖼️</div>
                                <span>Actualizar Imagen (Opcional)</span>
                            </div>
                        </div>

                        <div class="campo-editar">
                            <label for="nombre">Nombre del producto</label>
                            <input type="text" id="nombre" value="Zapatillas Deportivas Modelo X">
                        </div>

                        <div class="campo-editar">
                            <label for="descripcion">Descripción</label>
                            <textarea id="descripcion" rows="3">Zapatillas ligeras ideales para correr. Fabricadas con materiales reciclados y suela de alta tracción.</textarea>
                        </div>

                        <div class="campos-fila-editar">
                            <div class="campo-editar">
                                <label for="precio">Precio ($)</label>
                                <input type="text" id="precio" value="89.99">
                            </div>
                            <div class="campo-editar">
                                <label for="stock">Stock (Unidades)</label>
                                <input type="number" id="stock" value="45">
                            </div>
                        </div>

                        <div class="campo-editar">
                            <label for="categoria">Categoría</label>
                            <select id="categoria">
                                <option value="calzado" selected>Calzado</option>
                                <option value="electronica">Electrónica</option>
                                <option value="muebles">Muebles</option>
                                <option value="ropa">Ropa</option>
                            </select>
                        </div>

                        <div class="botones-editar">
                            <a href="gestionCatalogo.html" class="btn-cancelar-editar">Cancelar</a>
                            <button type="submit" class="btn-actualizar">🔄 Actualizar</button>
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
