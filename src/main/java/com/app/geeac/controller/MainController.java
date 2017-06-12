/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.app.geeac.controller;

import com.app.geeac.model.Susuario;
import com.app.geeac.service.SusuarioService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author luish
 */
@Controller
public class MainController {
    
    @Autowired
    SusuarioService userService;
    @RequestMapping("/")
    public String index() {
        return "index";
    }

    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public ModelAndView login(@RequestParam("usuario") String usuario,@RequestParam("passwd") String passwd) {
        //Susuario user = userService;
        System.out.println(usuario);
        System.out.println(passwd);
        return new ModelAndView("redirect:/welcome");
    }
    @RequestMapping("/welcome")
    public String welcome() {
        return "welcome";               
    }
}
