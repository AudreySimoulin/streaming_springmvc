/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

function modifierGenre(id){
    $(".contenu").load(path+"modifierGenreEcran/"+id);
}

//function majGenre(){
//    $.post(path+"ajouterGenre", $('[name=modifierGenre],[name=ajouterGenre]').serialize(), function success(){
//        $(".contenu").load(path+"listeGenres");
//    });
//}
//2eme technique qui évite de faire une requete supp(due au load)
function majGenre(){
    $.post(path+"ajouterGenre", $('[name=modifierGenre],[name=ajouterGenre]').serialize(), function(data){
        $(".contenu").html(data);
    });
}

function supprimerGenre(id){
    $(".contenu").load(path+"supprimerGenre/"+id);
}

function ajouterGenreEcran(){
    $(".contenu").load(path+"ajouterGenreEcran");
}



