package com.verde.pistache.model;
// Generated 20/06/2018 09:11:09 PM by Hibernate Tools 4.3.1


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

/**
 * Fotosold generated by hbm2java
 */


public class Fotosold  implements java.io.Serializable {


     private Integer idfoto;
     private Productoold producto;
     private String nombre;

    public Fotosold() {
    }

	
    public Fotosold(Productoold producto) {
        this.producto = producto;
    }
    public Fotosold(Productoold producto, String nombre) {
       this.producto = producto;
       this.nombre = nombre;
    }
   
     @Id @GeneratedValue(strategy=IDENTITY)

    
    @Column(name="idfoto", unique=true, nullable=false)
    public Integer getIdfoto() {
        return this.idfoto;
    }
    
    public void setIdfoto(Integer idfoto) {
        this.idfoto = idfoto;
    }

@ManyToOne(fetch=FetchType.LAZY)
    @JoinColumn(name="producto_idproducto", nullable=false)
    public Productoold getProducto() {
        return this.producto;
    }
    
    public void setProducto(Productoold producto) {
        this.producto = producto;
    }

    
    @Column(name="nombre", length=45)
    public String getNombre() {
        return this.nombre;
    }
    
    public void setNombre(String nombre) {
        this.nombre = nombre;
    }




}


