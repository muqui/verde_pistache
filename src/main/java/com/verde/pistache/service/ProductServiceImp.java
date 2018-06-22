/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.verde.pistache.service;

import com.verde.pistache.model.Producto;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.verde.pistache.dao.ProductDao;
import org.springframework.transaction.annotation.Transactional;

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
    
}
