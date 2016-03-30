/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package streaming.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import streaming.entity.Film;
import streaming.entity.Genre;
import streaming.entity.Serie;
import streaming.service.FilmCrudService;
import streaming.service.GenreCrudService;
import streaming.service.SerieCrudService;

/**
 *
 * @author admin
 */

@Controller
public class HomeController {
    
    @Autowired
    private FilmCrudService filmCrudService;
    
    @Autowired
    private SerieCrudService serieCrudService;
    
    @Autowired
    private GenreCrudService genreCrudService;
    
    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String homepage(){
        return "homepage";
    }
    
    @RequestMapping(value = "/listeFilms", method = RequestMethod.GET)
    public String listeFilms(Model model){
        Iterable<Film> films = filmCrudService.findAll();
        
        model.addAttribute("mesFilms", films);
        
        return "liste_films";
    }
    
    @RequestMapping(value = "/listeSeries", method = RequestMethod.GET)
    public String listeSeries(Model model){
        Iterable<Serie> series = serieCrudService.findAll();
        model.addAttribute("mesSeries", series);
        return "liste_series";
    }
    
    @RequestMapping(value = "/listeGenres", method = RequestMethod.GET)
    public String listeGenres(Model model){
        Iterable<Genre> genres = genreCrudService.findAll();
        model.addAttribute("mesGenres", genres);
        return "liste_genres";
    }
}
