/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package BOS;

import java.util.List;
import modelo.Resena;
import persistencia.DAO.IResenaDAO;
import persistencia.DAO.impl.ResenaDAO;

/**
 *
 * @author USER
 */
public class ResenaBO {
   private final IResenaDAO resenaDAO;

    public ResenaBO() {
 
        this.resenaDAO = new ResenaDAO();
    }
   public List<Resena> obtenerTodasLasResenas() throws Exception{
       try {
          
       } catch (Exception e) {
       }
   }
}
