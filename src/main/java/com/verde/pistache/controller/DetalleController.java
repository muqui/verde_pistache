/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.verde.pistache.controller;

import com.verde.pistache.model.Producto;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import com.verde.pistache.service.ProductService;

/**
 *
 * @author mq12
 */
@Controller
public class DetalleController {
    	@Autowired
	private ProductService productService;
     @RequestMapping(value = {"/detalle"}, method = RequestMethod.GET)
    String  home(ModelMap model , HttpServletRequest request){
      String id = request.getParameter("c");
        Producto p = productService.getProducto(id);
         System.out.println("valor de p " + p);
          model.addAttribute("producto", p );
    return "detalle";
    }
    
}
