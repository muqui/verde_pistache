/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.verde.pistache.controller;

//import com.muqui.corona.model.UserRoles;
import com.verde.pistache.model.Users;
import com.verde.pistache.service.ProductService;
import com.verde.pistache.service.UserValidator;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 *
 * @author mq12
 */
@Controller
public class RegistroController {

    @Autowired
    ProductService productService;
    @Autowired
    @Qualifier("userDetailsService")
    UserDetailsService userDetailsService;
    @Autowired
    @Qualifier("authenticationManager")
    AuthenticationManager authenticationManager;

    @RequestMapping(value = {"/registro"}, method = RequestMethod.GET)
    public String crearQuiniela(ModelMap model) {
        model.addAttribute("user", new Users());
        //  return "userregistro";
        return "registro";
    }

    @RequestMapping(value = "/saveuser", method = RequestMethod.POST)
    public String save(@ModelAttribute("user") @Valid Users user, BindingResult bindingResult, ModelMap model, HttpServletRequest request, HttpSession session) {
        // BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
        UserValidator userValidator = new UserValidator();
        boolean correo = productService.getEmail(user.getCorreo());
        userValidator.setCorreo(correo);
        userValidator.validate(user, bindingResult);
        // new UserValidator().validate(user, bindingResult);
        // String hashedPassword = passwordEncoder.encode(user.getPassword());

        // user.setPassword(hashedPassword);
        if (bindingResult.hasErrors()) {
            System.out.println("Error * Error * Error* Error* Error* Error* Error* Error* Error* Error* Error* Error* Error* Error* Error* Error* Error");
            // model.addAttribute("user", user);
            return "registro";
        } else {
            System.out.println("Exito *Exito *Exito *Exito *Exito *Exito *Exito *Exito *Exito *Exito *Exito *Exito *Exito *Exito *Exito *Exito *Exito *Exito ");

            model.addAttribute("user", user);
            productService.addUsuario(user);
            loginAutomatico(user);
            Authentication auth = SecurityContextHolder.getContext().getAuthentication();
            String name = auth.getName(); //get logged in username
            System.out.println("Nombre despues del login automatico" + name);
            String loginAutomatico = (String) session.getAttribute("autologin");
            System.out.println("logon automatico  " + loginAutomatico);
            if (loginAutomatico.equalsIgnoreCase("1")) {
                return "redirect:/informacion";
            } else {
                return "index";
            }

        }
    }

    @RequestMapping(value = "/availableemailrecuperar", method = RequestMethod.GET)
    @ResponseBody
    public String availableEmail(@RequestParam String correo) {
        Boolean available = !productService.getEmail(correo);
        System.out.println("valor" + available + " nombre " + correo);
        return available.toString();
    }

    @RequestMapping(value = "/availableemail", method = RequestMethod.GET)
    @ResponseBody
    public String availableEmail1(@RequestParam String correo) {
        Boolean available = productService.getEmail(correo);
        System.out.println("valor" + available + " nombre " + correo);
        return available.toString();
    }

    public void loginAutomatico(Users user) {

        String username = user.getCorreo();
        String password2 = user.getPasswordConfirm();
        UserDetails userDetails = userDetailsService.loadUserByUsername(username);

        UsernamePasswordAuthenticationToken auth = new UsernamePasswordAuthenticationToken(userDetails, password2, userDetails.getAuthorities());
        authenticationManager.authenticate(auth);
        if (auth.isAuthenticated()) {
            SecurityContextHolder.getContext().setAuthentication(auth);
        }

    }

}
