/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.verde.pistache.service;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.stereotype.Service;

/**
 *
 * @author mq12
 */
@Service("authenticationManager")
public class CustomAuthenticationManager implements AuthenticationManager {

    public Authentication authenticate(Authentication a) throws AuthenticationException {
         String username = a.getName();
        String pw       = a.getCredentials().toString();
        return null;
       
    }
    
}