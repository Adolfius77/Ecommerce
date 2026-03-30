<%-- 
    Document   : login
    Created on : 29/03/2026, 5:42:44 p. m.
    Author     : garfi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Proyecto ECommerce</title>
        <link rel="stylesheet" href="../styles.css">
    </head>

    <body>
        <header class="barra-superior">
            <div class="header-left">
                <img src="../imgs/logo.png" alt="Logo" class="logo-img">
                <span class="logo-text">Ecommerce</span>
            </div>
            <div class="header-right">
                <a href="perfilUsuario.html" class="icon" title="Perfil"><img src="../imgs/perfil.png" alt="Perfil"></a>
                <a href="#cerrar-sesion" class="icon" title="Cerrar sesión"><img src="../imgs/salir.png"
                                                                                 alt="Cerrar sesión"></a>
            </div>
        </header>

        <div class="container">
            <aside class="menu-lateral">
                <nav>
                    <ul>
                        <li>
                            <div class="menu-item">
                                <img src="../imgs/inicio.png" alt="Inicio" class="menu-icon">
                                <a href="index.html">Inicio</a>
                            </div>
                        </li>
                        <li>
                            <div class="menu-item">
                                <img src="../imgs/catalogo.png" alt="Catálogo de productos" class="menu-icon">
                                <a href="catalago.html">Catálogo de productos</a>
                            </div>
                        </li>
                        <li>
                            <div class="menu-item">
                                <img src="../imgs/carrito.png" alt="Carrito de compras" class="menu-icon">
                                <a href="carritoCompras.html">Carrito de compras</a>
                            </div>
                        </li>
                        <li>
                            <div class="menu-item">
                                <img src="../imgs/pedidos.png" alt="Gestión de pedidos" class="menu-icon">
                                <a href="gestionPedidos.html">Gestión de pedidos</a>
                            </div>
                        </li>
                    </ul>
                </nav>
            </aside>

            <main class="contenido fondo-login">
                <div class="contenedor-login">
                    <div class="tarjeta-login">

                        <div class="icono-login">
                            <span>🔒</span> 
                        </div>

                        <div class="cabecera-login">
                            <h2>Bienvenido de nuevo</h2>
                            <p>Por favor, ingrese sus credenciales para acceder a su cuenta.</p>
                        </div>

                        <form class="formulario-login">

                            <div class="grupo-formulario">
                                <label for="email">Correo electrónico</label>
                                <div class="input-icono">
                                    <span class="icono">✉️</span>
                                    <input type="email" id="email" placeholder="Ingrese su correo electrónico">
                                </div>
                            </div>

                            <div class="grupo-formulario">
                                <label for="password">Contraseña</label>
                                <div class="input-icono">
                                    <span class="icono">🔑</span>
                                    <input type="password" id="password" placeholder="Ingrese su contraseña">
                                </div>
                            </div>

                            <div class="enlace-olvido">
                                <a href="#">¿Olvidó su contraseña?</a>
                            </div>

                            <button type="submit" class="btn-iniciar">Iniciar sesión</button>
                        </form>

                        <div class="pie-login">
                            <p>¿No tiene una cuenta? <a href="registro.html">Regístrese aquí</a></p>
                            <button class="btn-regresar" onclick="window.location.href = 'index.html'">
                                &larr; Regresar a inicio
                            </button>
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