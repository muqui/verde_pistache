/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.verde.pistache.dao;

import com.verde.pistache.model.Producto;
import com.verde.pistache.model.Users;
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

    public Producto getProducto(String imagen) {
        Producto p = null;

        Session session = this.sessionFactory.getCurrentSession();
        Query query = session.createQuery("from Producto where imagen= :imagen ");
        query.setParameter("imagen", imagen);
        List<?> list = query.list();
        if (list.size() > 0) {
            p = (Producto) list.get(0);
        }

        return p;
    }

    @Override
    public List<Producto> getProductoList(String categoria) {
        List<Producto> productos = null;
        Session session = this.sessionFactory.getCurrentSession();
        Query query = session.createQuery("from Producto where categoria= :categoria ");
        query.setParameter("categoria", categoria);
        List<?> list = query.list();
        if (list.size() > 0) {
            productos = (List<Producto>) list;
        }
        return productos;
    }

    @Override
    public void addUsuario(Users user) {
        Session session = this.sessionFactory.openSession();
        session.save(user);
    }

    @Override
    public Users findByUserName(String correo) {
        Session session = this.sessionFactory.getCurrentSession();
        Query query = session.createQuery("from Users where correo= :correo ");
        query.setParameter("correo", correo);
        List<?> list = query.list();
        Users u = (Users) list.get(0);
        return u;
    }

    @Override
    public boolean getEmail(String correo) {
        Session session = this.sessionFactory.getCurrentSession();
        Query query = session.createQuery("from Users where correo= :correo ");
        query.setParameter("correo", correo);
        List<?> list = query.list();

        if (list.size() > 0) {
            System.out.println("true");
            return false;
        } else {
            System.out.println("false");
            return true;
        }
    }

    @Override
    public void updateUser(Users user) {
       // BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
      //  String hashedPassword = passwordEncoder.encode(userGrupo.getPassword());
      //  user.setPassword(hashedPassword);
        Session session = this.sessionFactory.getCurrentSession();
        session.update(user);
    }

}
