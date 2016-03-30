/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

function modifierFilm(id){
    $(".contenu").load(path+"modifierFilmEcran/"+id);
}

function majFilm(){
    $.post(path+"ajouterFilm", $('[name=modifier],[name=ajouter]').serialize(), function success(data){
        $(".contenu").html(data);
    });
}

function supprimerFilm(id){
    $(".contenu").load(path+"supprimerFilm/"+id);
}

function ajouterFilmEcran(){
    $(".contenu").load(path+"ajouterFilmEcran");
}

