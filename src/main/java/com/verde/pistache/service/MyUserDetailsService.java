/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.verde.pistache.service;

/**
 *
 * @author mq12
 */

//import com.muqui.corona.model.UserRoles;
import com.verde.pistache.dao.ProductDao;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service("userDetailsService")
public class MyUserDetailsService implements UserDetailsService {

    @Autowired
    private ProductDao dao;

    @Transactional(readOnly = true)
    @Override
    public UserDetails loadUserByUsername(final String correo) throws UsernameNotFoundException {

        com.verde.pistache.model.Users user = dao.findByUserName(correo);
        	List<GrantedAuthority> authorities = buildUserAuthority();

        return buildUserForAuthentication(user, authorities);

    }

    
    private User buildUserForAuthentication(com.verde.pistache.model.Users user, List<GrantedAuthority> authorities) {
      //  return new User(user.getUsername(), user.getPassword(), true, true, true, true, authorities);
      return new User(user.getCorreo(), user.getPassword(), true, true, true, true, authorities);
    }

	private List<GrantedAuthority> buildUserAuthority() {

		Set<GrantedAuthority> setAuths = new HashSet<GrantedAuthority>();

		
			setAuths.add(new SimpleGrantedAuthority("ROLE_USER"));
		

		List<GrantedAuthority> Result = new ArrayList<GrantedAuthority>(setAuths);

		return Result;
	}
   
}
