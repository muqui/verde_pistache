/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.verde.pistache.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.verde.pistache.dao.ProductDao;
import com.verde.pistache.model.Producto;
import com.verde.pistache.model.Users;
import org.springframework.transaction.annotation.Transactional;
import java.util.List;

/**
 *
 * @author mq12
 */
@Service("productService")
@Transactional
public class ProductServiceImp implements ProductService{
    @Autowired
	private ProductDao productDAO;
    @Override
    public Producto getProducto(String codigo) {
    return productDAO.getProducto(codigo);
    }
      @Override
    public List<Producto> getProductoList(String c) {
       return productDAO.getProductoList(c);
    }

    @Override
    public void addUsuario(Users user) {
       productDAO.addUsuario(user);
    }

    @Override
    public Users findByUserName(String nombre) {
          return productDAO.findByUserName(nombre);
    }

    @Override
    public boolean getEmail(String email) {
       return productDAO.getEmail(email);
    }
   public void updateUser(Users user){
       productDAO.updateUser(user);
   }
   
}
