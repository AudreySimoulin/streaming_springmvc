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
import streaming.entity.Serie;
import streaming.service.SerieCrudService;

/**
 *
 * @author admin
 */
@Controller
public class SerieController {

    @Autowired
    private SerieCrudService serieCrudService;

    @RequestMapping(value = "/ajouterSerieEcran", method = RequestMethod.GET)
    public String ajouterSerieEcran(Model model) {
        model.addAttribute("maSerie", new Serie());
        return "ajouter_serie";
    }

    @RequestMapping(value = {"/ajouterSerie", "/modifierSerieEcran/{idSerie}"}, method = RequestMethod.POST)
    public String ajouterSerie(@ModelAttribute(value = "maSerie") Serie s) {
        serieCrudService.save(s);
        return "redirect:/listeSeries";
    }

    @RequestMapping(value = "/supprimerSerie/{idSerie}", method = RequestMethod.GET)
    public String supprimerSerie(@PathVariable(value = "idSerie") long serieId) {
        serieCrudService.delete(serieId);
        return "redirect:/listeSeries";
    }

    @RequestMapping(value = "/modifierSerieEcran/{idSerie}", method = RequestMethod.GET)
    public String modifierSerieEcran(Model model, @PathVariable(value = "idSerie") Long id) {
        model.addAttribute("maSerie", serieCrudService.findOne(id));
        return "modifier_serie";
    }

}
