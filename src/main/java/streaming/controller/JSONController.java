/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package streaming.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import streaming.entity.Film;

/**
 *
 * @author admin
 */
@Controller
public class JSONController {
    
    @ResponseBody
    @RequestMapping(value = "chargerjson", method = RequestMethod.GET)
    public Film charger(){
        Film f = new Film(123L, "KungFu Panda 3", 2016L, "blabla", null);
        
        return f;
    }
    
    @RequestMapping(value = "test", method = RequestMethod.GET)
    public String test(){
        return "testjson";
    }
}
