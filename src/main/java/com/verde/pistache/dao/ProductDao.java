/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.verde.pistache.dao;

import com.verde.pistache.model.Producto;

/**
 *
 * @author mq12
 */
public interface ProductDao {

    public Producto getProducto(String codigo);
    
}
