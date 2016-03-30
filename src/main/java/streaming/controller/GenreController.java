/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package streaming.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import streaming.entity.Genre;
import streaming.service.GenreCrudService;

/**
 *
 * @author admin
 */

@Controller
public class GenreController {
    
    @Autowired
    private GenreCrudService genreCrudService;
    
    @RequestMapping(value = "/ajouterGenreEcran", method = RequestMethod.GET)
    public String ajouterGenreEcran(Model model){
        model.addAttribute("monGenre", new Genre());
        return "ajouter_genre";
    }
    
    
    @RequestMapping(value = {"/ajouterGenre", "/modifierGenreEcran/{idGenre}"}, method = RequestMethod.POST)
    public String ajouterGenre(@ModelAttribute(value = "monGenre") Genre g){
        genreCrudService.save(g);
        return "redirect:/listeGenres";
    }
    
    @RequestMapping(value = "/supprimerGenre/{idGenre}", method = RequestMethod.GET)
    public String supprimerGenre(@PathVariable(value = "idGenre") long genreId){
        genreCrudService.delete(genreId);
        return "redirect:/listeGenres";
    }
    
    @RequestMapping(value = "/modifierGenreEcran/{idGenre}", method = RequestMethod.GET)
    public String modifierGenreEcran(Model model, @PathVariable(value = "idGenre") Long id){
        model.addAttribute("monGenre", genreCrudService.findOne(id));
        return "modifier_genre";
    }
    
}
