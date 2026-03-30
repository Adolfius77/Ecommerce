/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package persistencia.DAO.impl;

import Config.MongoClientProvider;
import com.mongodb.MongoException;
import com.mongodb.client.MongoCollection;
import com.mongodb.client.model.Filters;
import com.mongodb.client.model.Updates;
import com.mongodb.client.result.UpdateResult;
import java.util.ArrayList;
import java.util.List;
import modelo.Pedido;
import org.bson.types.ObjectId;
import persistencia.DAO.IPedidoDAO;

/**
 *
 * @author USER
 */
public class PedidoDAO implements IPedidoDAO {

    private final MongoCollection<Pedido> col;

    public PedidoDAO() {
        this.col = MongoClientProvider.INSTANCE.getcCollection("pedidos", Pedido.class);
    }

    @Override
    public List<Pedido> listarTodos() {
        try {
             return col.find().into(new ArrayList<>());
        } catch (MongoException e) {
            throw new MongoException("error al listar todos los pedidos" + e);
        }
    }

    @Override
    public void actualizarEstado(ObjectId _id, String nuevoEstado) {
        try {
            col.updateOne(
                    Filters.eq("_id", _id),
                    Updates.set("estado", nuevoEstado)
            );
        } catch (MongoException e) {
            throw new MongoException("error al actualizar el estado" + e);
        }
    }

}
