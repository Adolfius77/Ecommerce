/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package persistencia.DAO.impl;

import Config.MongoClientProvider;
import com.mongodb.client.MongoCollection;
import static com.mongodb.client.model.Filters.eq;
import modelo.Resena;
import org.bson.types.ObjectId;
import persistencia.DAO.IResenaDAO;

/**
 *
 * @author garfi
 */
public class ResenaDAO implements IResenaDAO{
    private final MongoCollection<Resena> coleccion;

    public ResenaDAO() {
        this.coleccion = MongoClientProvider.INSTANCE.getcCollection("resenas", Resena.class);
    }

    @Override
    public ObjectId agregarResena(Resena resena) {
        try {
            coleccion.insertOne(resena);
            return resena.getId();
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    @Override
    public boolean eliminarResena(ObjectId id) {
        return coleccion.deleteOne(eq("_id", id)).getDeletedCount() > 0;
    }
    
    
}
