/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

function modifierSerie(id){
    $(".contenu").load(path+"modifierSerieEcran/"+id);
}

function majSerie(){
    $.post(path+"ajouterSerie", $('[name=modifierSerie],[name=ajouterSerie]').serialize(), function success(data){
        $(".contenu").html(data);
    });
}

function supprimerSerie(id){
    $(".contenu").load(path+"supprimerSerie/"+id);
}

function ajouterSerieEcran(){
    $(".contenu").load(path+"ajouterSerieEcran");
}

