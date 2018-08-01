/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.verde.pistache.service;

import com.verde.pistache.model.Users;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

/**
 *
 * @author mq12
 */
public class UserValidator implements Validator {

    private boolean correo;

    @Override
    public boolean supports(Class<?> type) {
        return type == Users.class;
    }

    @Override
    public void validate(Object o, Errors errors) {

        Users users = (Users) o;
        //valida que la contraseña y su confirmacion sean iguales
        if (!users.getPasswordConfirm().equalsIgnoreCase(users.getPassword())) {
            errors.rejectValue("passwordConfirm", "passwordConfirm.incorrect", "Contraseña diferente");
        }
      //valida correo unico
        if (!isCorreo()) {
            errors.rejectValue("correo", "correo.incorrect", "Correo registrado");
        }

    }

    public boolean isCorreo() {
        return correo;
    }
    public void setCorreo(boolean correo) {
        this.correo = correo;
    }

}
