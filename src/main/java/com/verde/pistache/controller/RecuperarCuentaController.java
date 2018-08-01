/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.verde.pistache.controller;

import com.verde.pistache.model.Codigo;
import com.verde.pistache.model.Contact;
import com.verde.pistache.model.Users;
import com.verde.pistache.service.MailComponent;
import com.verde.pistache.service.ProductService;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 *
 * @author mq12
 */
@Controller
public class RecuperarCuentaController {

    @Autowired
    ProductService productService;
    @Autowired
    MailComponent mailComponent;

    @RequestMapping(value = "/recupearcuentaf", method = RequestMethod.GET)
    public String recupearcuentaf(ModelMap model, HttpSession session) {

        System.out.println("formulario");
        model.addAttribute("user", new Users());

        return "recupearcuenta";

    }

    @RequestMapping(value = "/recuperarpassword", method = RequestMethod.POST)
    @ResponseBody
    public String recuperarpassword(ModelMap model, @ModelAttribute @Valid Users user, BindingResult bindingResult) {
        System.out.println("nombre: " + user.getUsername() + " email " + user.getCorreo()+ " clave " + user.getPassword());
        if (bindingResult.hasErrors()) {
            System.out.println("HAY ERRORxx");
            return "error";
        } else {

            String clave = new Codigo().getCadenaAlfanumAleatoria6();

            Users u = productService.findByUserName(user.getCorreo());
            u.setPassword(clave);
            String mensaje = "Estimado usuario regresa al sito e ingrese con la siguiente informacion:    nombre: " + u.getUsername() + " Contraseña: " + u.getPassword();
            System.out.println("nombre: " + u.getUsername() + " email " + u.getCorreo() + " clave " + clave);
            productService.updateUser(u);
            Contact contact = new Contact();
            contact.setEmail(u.getCorreo());
            contact.setMessage(mensaje);
            contact.setPhone("36446624");
            contact.setSubject("recuperacion de contraseña");
            mailComponent.sendSimpleMail(contact);

            System.out.println("NOHAYERROR3x43xx3");
            return "correo enviado correctamente";

        }

    }
}
