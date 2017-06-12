/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.app.geeac.dao;

import com.app.geeac.model.Smenu;
import org.springframework.data.repository.CrudRepository;

/**
 *
 * @author luish
 */
public interface SmenuDao extends CrudRepository<Smenu, Integer>{
    Integer findByMnuId();
    String findByMnuNombre();
}
