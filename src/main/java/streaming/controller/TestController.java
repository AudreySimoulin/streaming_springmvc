/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package streaming.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author admin
 */
@Controller
public class TestController {
    
    @RequestMapping(value = "/a/b/c/d")
    public String route1(){
        
        return "jsp_inexistante";
    }
    
    @RequestMapping(value = "/a/ajouter")
    public String route2(){
        
        return "jsp_inexistante";
    }
}
