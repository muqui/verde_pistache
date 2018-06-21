/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.verde.pistache.dao;

import com.verde.pistache.model.Producto;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

/**
 *
 * @author mq12
 */
@Repository("productDao")
public class ProductDaoImp implements ProductDao {
    @Autowired
    private SessionFactory sessionFactory;

    public void setSessionFactory(SessionFactory sf) {
        this.sessionFactory = sf;
    }

    public Producto getProducto(String codigo) {
   
          Session session = this.sessionFactory.getCurrentSession();
        Query query = session.createQuery("from Producto where codigo= :codigo ");
        query.setParameter("codigo", codigo);
        List<?> list = query.list();
        Producto p = (Producto) list.get(0);

        System.out.println("imagen: " + p);

        return p;
    }
    
}
