/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.verde.pistache.controller;

import com.verde.pistache.model.Producto;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;
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
@RequestMapping(value = "paypal")
public class PayPalController {

  //  @Autowired
 //   private PayPalService PayPalService;

    @RequestMapping(method = RequestMethod.GET)
    public String pago(ModelMap modelMap) {
        List<Producto> products = new ArrayList<Producto>();
        products.add(new Producto("imagen", "nombre", "codigo", new BigDecimal("10.0"), 1, "des", 1, "talla", "categori"));
        products.add(new Producto("imagen1", "nombre1", "codigo1", new BigDecimal("10.0"), 1, "des", 1, "talla", "categori"));
        products.add(new Producto("imagen2", "nombre2", "codigo2", new BigDecimal("10.0"), 1, "des", 1, "talla", "categori"));
        products.add(new Producto("imagen3", "nombre3", "codigo3", new BigDecimal("10.0"), 1, "des", 2, "talla", "categori"));
        modelMap.put("products", products);
      //  modelMap.put("payPalConfig", PayPalService.getPayPalConfig());
        return "pago";
    }
}
