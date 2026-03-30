package controllers;

import BOS.ProductoBO;
import BOS.interfaces.IProductoBO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;
import modelo.Producto;
import org.bson.types.ObjectId;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

@WebServlet(name = "ProductoServlet", urlPatterns = "/ProductoServlet")
@MultipartConfig(fileSizeThreshold = 1024 * 1024, maxFileSize = 1024 * 5, maxRequestSize = 1024 * 1024 * 10)
public class ProductoServlet extends HttpServlet {
    private IProductoBO productoBO;
    private static final String UPLOAD_DIR ="uploads";

    @Override
    public void init() throws ServletException {
        productoBO = new ProductoBO();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String accion = request.getParameter("accion");
        if (accion == null || accion.equals("listar")) {
            List<Producto> productos = productoBO.listarProductos();
            request.setAttribute("productos", productos);
            request.getRequestDispatcher("views/gestionCatalogo.jsp").forward(request, response);
        } else if (accion.equals("eliminar")) {
            String id = request.getParameter("id");
            if (id != null) {
                productoBO.eliminarProducto(new ObjectId(id));
            }
            response.sendRedirect("ProductoServlet?accion=listar");
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String nombre = request.getParameter("nombre");
        String precioStr = request.getParameter("precio");
        String descripcion = request.getParameter("descripcion");
        String stockStr = request.getParameter("stock");
        String categoria = request.getParameter("categoria");

        double precio = (precioStr != null) ? Double.parseDouble(precioStr) : 0;
        int stock = (stockStr != null) ? Integer.parseInt(stockStr) : 0;

        Part filePart = request.getPart("imagenProducto");
        String fileName = filePart.getSubmittedFileName();
        String rutaFinalImagen = "";

        if (fileName != null && !fileName.isEmpty()) {
            String applicationPath = request.getServletContext().getRealPath("");
            String uploadFilePath = applicationPath + File.separator + UPLOAD_DIR;

            File uploadDir = new File(uploadFilePath);
            if (!uploadDir.exists()) uploadDir.mkdirs();

            filePart.write(uploadFilePath + File.separator + fileName);
            rutaFinalImagen = UPLOAD_DIR + "/" + fileName;
        }
        Producto nuevo = new Producto(nombre, precio, descripcion, rutaFinalImagen, stock, categoria);
        productoBO.registrarProducto(nuevo);
        response.sendRedirect("ProductoServlet?accion=listar");
    }
}
