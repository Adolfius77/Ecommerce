package BOS;

import BOS.interfaces.IProductoBO;
import modelo.Producto;
import org.bson.types.ObjectId;
import persistencia.DAO.IProductoDAO;
import persistencia.DAO.impl.ProductoDAO;

import java.util.List;

public class ProductoBO implements IProductoBO {
    private final IProductoDAO productoDAO;

    public ProductoBO() {
        this.productoDAO = new ProductoDAO();
    }

    @Override
    public List<Producto> listarProductos() {
        return productoDAO.obtenerProductos();
    }

    @Override
    public Producto buscarProductoPorId(ObjectId id) {
        return productoDAO.obtenerProductoPorId(id);
    }

    @Override
    public void registrarProducto(Producto producto) {
        if (producto.getPrecio() > 0) {
            productoDAO.insertar(producto);
        }
    }

    @Override
    public void actualizarProducto(Producto producto) {
        productoDAO.actualizar(producto);
    }

    @Override
    public void eliminarProducto(Producto producto) {
        productoDAO.eliminar(producto.getId());
    }
}
