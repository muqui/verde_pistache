/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.verde.pistache.controller;

import com.verde.pistache.model.Producto;
import java.util.ArrayList;
import javax.servlet.http.HttpSession;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author mq12
 */
@Controller
public class IndexController {

    @RequestMapping(value = {"/"}, method = RequestMethod.GET)
    String home(ModelMap model, HttpSession session) {
        //session autologin
          Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        String name = auth.getName(); //get logged in username
        System.out.println("name :" + name);
        if (session.getAttribute("autologin") == null) {
            session.setAttribute("autologin", "0");
        }

        return "index";
    }
}
