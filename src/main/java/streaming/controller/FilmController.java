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
import streaming.entity.Film;
import streaming.service.FilmCrudService;
import streaming.service.GenreCrudService;

/**
 *
 * @author admin
 */
@Controller
public class FilmController {

    @Autowired
    private FilmCrudService filmCrudService;

    @Autowired
    private GenreCrudService genreCrudService;

    @RequestMapping(value = "/ajouterFilmEcran", method = RequestMethod.GET)
    public String ajouterFilmEcran(Model model) {
        model.addAttribute("monFilm", new Film());
        model.addAttribute("mesGenres", genreCrudService.findAll());
        return "ajouter_film";
    }

    @RequestMapping(value = {"/ajouterFilm", "/modifierFilmEcran/{idFilm}"}, method = RequestMethod.POST)
    public String ajouterFilm(@ModelAttribute(value = "monFilm") Film f) {
        filmCrudService.save(f);
        return "redirect:/listeFilms";
    }

    @RequestMapping(value = "/supprimerFilm/{idFilm}", method = RequestMethod.GET)
    public String supprimerFilm(@PathVariable(value = "idFilm") long filmId) {
        filmCrudService.delete(filmId);
        return "redirect:/listeFilms";
    }

    @RequestMapping(value = "/modifierFilmEcran/{idFilm}", method = RequestMethod.GET)
    public String modifierFilmEcran(Model model, @PathVariable(value = "idFilm") Long id) {
        model.addAttribute("monFilm", filmCrudService.findOne(id));
        model.addAttribute("mesGenres", genreCrudService.findAll());
        return "modifier_film";
    }
}
