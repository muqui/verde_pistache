/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.verde.pistache.controller;

import javax.servlet.http.HttpSession;
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
    String  home(ModelMap model , HttpSession session){
    
    return "index";
    }
}
