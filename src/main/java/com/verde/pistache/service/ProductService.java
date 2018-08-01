/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.verde.pistache.service;

import com.verde.pistache.model.Producto;
import com.verde.pistache.model.Users;
import java.util.List;

/**
 *
 * @author mq12
 */
public interface ProductService {

    public Producto getProducto(String codigo);

    public List<Producto> getProductoList(String c);

    public void addUsuario(Users user);

    public Users findByUserName(String nombre);

    boolean getEmail(String email);

    public void updateUser(Users user);
}
