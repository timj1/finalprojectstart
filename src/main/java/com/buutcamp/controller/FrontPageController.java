package com.buutcamp.controller;

import com.buutcamp.controller.user.NewUser;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;



@Controller
public class FrontPageController {

    @GetMapping("/")
    public String showHome(Model model, Authentication authentication) {


        return "homepage";
    }
    @GetMapping("/editpage")
    public String showEditPage(Model model) {

        return "editpage";
    }
    @GetMapping("/logout.done")
    public String logout() {

        return "redirect:/";
    }

}
