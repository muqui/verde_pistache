/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.verde.pistache.service;


import com.verde.pistache.model.Contact;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.MailException;
import org.springframework.mail.MailSender;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Component;

/**
 *
 * @author mq12
 */
@Component
public class MailComponent {

    @Autowired
    MailSender mailSender;

    @Autowired
    JavaMailSender javaMailSender;

   

    public boolean sendSimpleMail(Contact contact) {
        SimpleMailMessage mailMessage = new SimpleMailMessage();
        mailMessage.setFrom(contact.getEmail());
        mailMessage.setSubject(contact.getSubject());
        mailMessage.setText(contact.getMessage());
        mailMessage.setTo("muqui@hotmail.com"); // if you use Gmail do not forget to put your personal address

        try {
            mailSender.send(mailMessage);
            return true;
        } catch (MailException e) {
            System.err.println(e.getMessage());
            return false;
        }
    }

  
}

