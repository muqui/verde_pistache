package com.verde.pistache.model;
// Generated 25/06/2018 04:22:48 PM by Hibernate Tools 4.3.1

import java.math.BigDecimal;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 * Producto generated by hbm2java
 */
@Entity
public class Producto implements java.io.Serializable {

    @Override
    public String toString() {
        return "Producto{" + "idproducto=" + idproducto + ", imagen=" + imagen + ", nombre=" + nombre + ", codigo=" + codigo + ", price=" + price + ", cantidad=" + cantidad + ", descripcion=" + descripcion + ", stock=" + stock + ", talla=" + talla + ", categoria=" + categoria + ", fotoses=" + fotoses + '}';
    }

    public Producto(Integer idproducto) {
        this.idproducto = idproducto;
    }

   

    private Integer idproducto;
    private String imagen;
    private String nombre;
    private String codigo;
    private BigDecimal price;
    private int cantidad;
    private String descripcion;
    private int stock;
    private String talla;
    private String categoria;
    @Column(name = "talla", nullable = false, length = 50)
    public String getTalla() {
        return talla;
    }

    public void setTalla(String talla) {
        this.talla = talla;
    }
@Column(name = "categoria", nullable = false, length = 10)
    public String getCategoria() {
        return categoria;
    }

    public void setCategoria(String categoria) {
        this.categoria = categoria;
    }
    private List<Fotos> fotoses = new LinkedList<Fotos>();

    public Producto() {
    }

    public Producto(String imagen, String nombre, String codigo, BigDecimal price, int cantidad, String descripcion, int stock, String talla , String categoria) {
        this.imagen = imagen;
        this.nombre = nombre;
        this.codigo = codigo;
        this.price = price;
        this.cantidad = cantidad;
        this.descripcion = descripcion;
        this.stock = stock;
        this.talla = talla;
        this.categoria = categoria;
    }

    public Producto(String imagen, String nombre, String codigo, BigDecimal price, int cantidad, String descripcion, int stock, String talla , String categoria, List<Fotos> fotoses) {
        this.imagen = imagen;
        this.nombre = nombre;
        this.codigo = codigo;
        this.price = price;
        this.cantidad = cantidad;
        this.descripcion = descripcion;
        this.stock = stock;
         this.talla = talla;
        this.categoria = categoria;
        this.fotoses = fotoses;
    }

    @Id
    @GeneratedValue(strategy = IDENTITY)

    @Column(name = "idproducto", unique = true, nullable = false)
    public Integer getIdproducto() {
        return this.idproducto;
    }

    public void setIdproducto(Integer idproducto) {
        this.idproducto = idproducto;
    }

    @Column(name = "imagen", nullable = false, length = 50)
    public String getImagen() {
        return this.imagen;
    }

    public void setImagen(String imagen) {
        this.imagen = imagen;
    }

    @Column(name = "nombre", nullable = false, length = 50)
    public String getNombre() {
        return this.nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    @Column(name = "codigo", nullable = false, length = 50)
    public String getCodigo() {
        return this.codigo;
    }

    public void setCodigo(String codigo) {
        this.codigo = codigo;
    }

    @Column(name = "price", nullable = false, precision = 7)
    public BigDecimal getPrice() {
        return this.price;
    }

    public void setPrice(BigDecimal price) {
        this.price = price;
    }

    @Column(name = "cantidad", nullable = false)
    public int getCantidad() {
        return this.cantidad;
    }

    public void setCantidad(int cantidad) {
        this.cantidad = cantidad;
    }

    @Column(name = "descripcion", nullable = false, length = 50)
    public String getDescripcion() {
        return this.descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    @Column(name = "stock", nullable = false)
    public int getStock() {
        return this.stock;
    }

    public void setStock(int stock) {
        this.stock = stock;
    }

    @OneToMany(fetch = FetchType.EAGER, mappedBy = "producto")
    public List<Fotos> getFotoses() {
        return this.fotoses;
    }

    public void setFotoses(List<Fotos> fotoses) {
        this.fotoses = fotoses;
    }

}
