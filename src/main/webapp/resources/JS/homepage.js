/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


function loadFilms(){
    $(".contenu").load(path+"listeFilms");
}

function loadSeries(){
    $(".contenu").load(path+"listeSeries");
}

function loadGenres(){
    $(".contenu").load(path+"listeGenres");
}

function afficheSablier() {
    $(".sablier").show();
}

function cacheSablier() {
    $(".sablier").hide();
}

function loading() {
    var cs = function () {
        cacheSablier();
    };

    setTimeout(cs, 3000);
}

function onload(){
    cacheSablier();
    $(document).ajaxSend(function (){afficheSablier()});
    $(document).ajaxError(function (){loading()});
    $(document).ajaxSuccess(function (){loading()});
}