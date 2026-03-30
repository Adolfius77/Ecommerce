/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package BOS;

import modelo.Usuario;
import persistencia.DAO.IUsuarioDAO;
import persistencia.DAO.impl.UsuarioDAO;

/**
 *
 * @author USER
 */
public class UsuarioBO {

    private final IUsuarioDAO usuarioDAO;

    public UsuarioBO() {
        this.usuarioDAO = new UsuarioDAO();
    }

    public Usuario iniciarSesion(String correo, String password) throws Exception {
        if (correo == null || correo.trim().isEmpty()) {
            throw new Exception("el correo es obligatorio");
        }
        if (password == null || password.trim().isEmpty()) {
            throw new Exception("la contraseña es obligatoria");
        }
        Usuario usuarioEncontrado = usuarioDAO.autentificar(correo, password, "Admin");
        if (usuarioEncontrado == null) {
            throw new Exception("credenciales incorrectas o no tienes permisos de administrador");
        }
        return usuarioEncontrado;
    }
}
