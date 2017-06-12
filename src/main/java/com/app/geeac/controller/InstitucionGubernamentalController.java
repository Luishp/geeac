/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.app.geeac.controller;

import com.app.geeac.model.InstitucionGubernamental;
import com.app.geeac.service.InstitucionGubernamentalService;
import java.util.Date;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author luish
 */
@Controller
public class InstitucionGubernamentalController {

    @Autowired
    private InstitucionGubernamentalService insGobService;

    @RequestMapping("/instGob/list")
    public ModelAndView index() {
        return new ModelAndView("/instGob/list").addObject("institucion", insGobService.findAll());
    }

    @RequestMapping("/instGob/add")
    public ModelAndView createForm() {
        return new ModelAndView("/instGob/form");
    }
    @RequestMapping("/instGob/updateform/{id}")
    public String updateform(@PathVariable("id") String id, Model model) {
        InstitucionGubernamental ig = insGobService.findOne(Integer.parseInt(id));
        model.addAttribute("institucion",ig);
        return "/instGob/update";
    }

    @RequestMapping(method = RequestMethod.POST, value = "/instGob/save")
    public String addInstGob(@ModelAttribute("institucion") InstitucionGubernamental ig,
            ModelMap model) {
        Date fecha = new Date();
        System.out.println(fecha);
        ig.setFecCrea(fecha);
        ig.setUsuCrea("des123");
        System.out.println("*******************************************************");
        System.out.println(ig.getIngNombre());
        System.out.println(ig.getRegActivo());
        try{
        insGobService.save(ig);
        }catch(Exception e){
            System.out.println(e.getStackTrace());
            model.addAttribute("mensaje","El registro no se ha podido actualizar");
            return "/instGob/msj";
        }
        model.addAttribute("mensaje","Registro Almacenado");
        return "/instGob/msj";
    }
    @RequestMapping(value="/instGob/update")
    public String updateInstGob(@RequestBody InstitucionGubernamental ig, @PathVariable("id") String id, ModelMap model){
        Date fecha = new Date();
        System.out.println(fecha);
        ig.setFecCrea(fecha);
        ig.setUsuCrea("des123");
        //try{
        insGobService.save(ig);
        /*}catch(Exception e){
            System.out.println(e.getStackTrace());
            model.addAttribute("mensaje","El registro no se ha podido actualizar");
            return "/instGob/msj";
        }*/
        model.addAttribute("mensaje","Registro Actualizado");
        return "/instGob/msj";
    }
    @RequestMapping(value="/instGob/delete/{id}")
    public String deleteInstGob(@PathVariable("id") String id, ModelMap model){
        try{
        insGobService.delete(Integer.parseInt(id));
        }catch(Exception e){
            model.addAttribute("mensaje","El registro no se ha podido eliminar");
            return "/instGob/msj";
        }
        model.addAttribute("mensaje","Registro eliminado");
        return "/instGob/msj";
    }
    @RequestMapping("/instGob/msj")
    public ModelAndView Message() {
        return new ModelAndView("/instGob/msj");
    }
}
