package com.buutcamp.controller;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class PostMessage {

    @GetMapping("/postmessage")
    public String showPostmessage(Model model, Authentication authentication) {

        if(authentication.isAuthenticated()) {
        UserDetails userDetails = (UserDetails) authentication.getPrincipal();

            System.out.println("User has authorities " + userDetails.getAuthorities());
            System.out.println("User name " + userDetails.getUsername());

            model.addAttribute("currentUser", userDetails.getUsername());
        }

        return "postmessage";
    }
}
