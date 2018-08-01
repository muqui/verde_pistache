/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.verde.pistache.controller;

import com.verde.pistache.model.JsonResponse;
import com.verde.pistache.model.Producto;
import com.verde.pistache.model.Users;
import com.verde.pistache.service.ProductService;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ValidationUtils;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 *
 * @author mq12
 */
@Controller
public class CarritoController {

    @Autowired
    private ProductService productService;

    @RequestMapping(value = "/addcarrito", method = RequestMethod.POST)
    public @ResponseBody
    JsonResponse addproduct(@ModelAttribute Producto producto, BindingResult result, HttpSession session) {
        JsonResponse res = new JsonResponse();
        List<Producto> productList = null;
        System.out.println("producto nombre " + producto.toString());
        ValidationUtils.rejectIfEmpty(result, "nombre", "Name can not be empty.");
        ValidationUtils.rejectIfEmpty(result, "talla", "Selecione talla.");
        if (!result.hasErrors()) {
             session.setAttribute("autologin", "1");
            if (session.getAttribute("carrito") == null) {
                productList = new ArrayList<Producto>();
                productList.add(producto);
                session.setAttribute("carrito", productList);
            } else {
                productList = (List<Producto>) session.getAttribute("carrito");
                if (productList.isEmpty()) {
                    productList.add(producto);
                } else {
                    for (Producto p : productList) {
                        System.out.println("producto  " + p.getImagen() + " p " + p.getImagen());
                        if (producto.getImagen().equalsIgnoreCase(p.getImagen())) {
                            if (producto.getTalla().equalsIgnoreCase(p.getTalla())) {
                                p.setCantidad(p.getCantidad() + 1);
                            } else {
                                productList.add(producto);
                                break;
                            }

                        } else {
                            productList.add(producto);

                            break;
                        }
                    }
                }

                session.setAttribute("carrito", productList);
            }
            res.setStatus("SUCCESS");
            res.setResult(productList);
        } else {
            res.setStatus("FAIL");
            res.setResult(result.getAllErrors());
        }
        return res;
    }

    @RequestMapping(value = {"/carrito"}, method = RequestMethod.GET)
    String home(ModelMap model, HttpServletRequest request, HttpSession session) {
        model.addAttribute("carrito", (List<Producto>) session.getAttribute("carrito"));
         
        return "carrito";
    }

    @RequestMapping(value = {"/exito"}, method = RequestMethod.GET)
    String exito(ModelMap model, HttpServletRequest request, HttpSession session) {
        model.addAttribute("carrito", (List<Producto>) session.getAttribute("carrito"));
        session.invalidate();
        return "fin";
    }

    @RequestMapping(value = {"/borrarproducto"}, method = RequestMethod.GET)
    String borrarCarrito(ModelMap model, HttpServletRequest request, HttpSession session) {
        List<Producto> productList = null;
        String id = request.getParameter("c");
        productList = (List<Producto>) session.getAttribute("carrito");
        for (Producto p : productList) {
            if (id.equalsIgnoreCase(p.getImagen())) {
                productList.remove(p);
                break;
            }
        }
        session.setAttribute("carrito", productList);
        System.out.println("tamaño " + productList.size());
        return "carrito";
    }

    @RequestMapping(value = {"/informacion"}, method = RequestMethod.GET)
    public String informacion(ModelMap model, HttpSession session) {
        System.out.println("entro a informacion ????????????????????????????????????????????????????????????????????????????????????????????????????? informacion");
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        String name = auth.getName(); //get logged in username
       // System.out.println("Nombre " + name);
        model.addAttribute("user", productService.findByUserName(name));
        return "informacion";
    }
}
