/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.verde.pistache.controller;

import com.verde.pistache.model.Producto;
import com.verde.pistache.service.ProductService;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author mq12
 */
@Controller
public class CatalogoController {

    @Autowired
    //catalogo?c=HOMBRE
    private ProductService productService;

    @RequestMapping(value = {"/catalogo"}, method = RequestMethod.GET)
    String home(ModelMap model, HttpServletRequest request) {
        String c = request.getParameter("c");
        System.out.println("parametro " + c);
        List<Producto> p = productService.getProductoList(c);

        model.addAttribute("categoria", p.get(0).getCategoria());
        model.addAttribute("productos", p);
        return "categoria";
    }

}
