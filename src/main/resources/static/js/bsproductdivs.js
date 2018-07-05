function writediv(jsondata) {
    var newdiv = '';
    var id = 0;
    if (jsondata.length > 0) {
    for (var i = 0; i < jsondata.length; i++) {
        //id = jsondata[i]._links.model.href.substring(29);
        id = jsondata[i]._links.model.href.substring(jsondata[i]._links.model.href.lastIndexOf('/')+ 1);
        newdiv += '<div class="col-lg-4 col-md-6 mb-4"><div class="card h-100">';
        newdiv += '<img class="card-img-top" src="../images/' + id +'.jpg" alt="' + jsondata[i].merk + ' - ' + jsondata[i].naam + '">';
        newdiv += '<div class="card-body"><h3 class="card-title">' + jsondata[i].merk + ' - ' + jsondata[i].naam + '</h3>';
        newdiv += '<h3>€' + jsondata[i].prijs + '-,</h3>';
        newdiv += '<table class="card-text"><tr><td>Type fiets</td><td class="seperator">:</td><td>' + jsondata[i].type + '</td>';
        newdiv += '<tr><td>Versnellingen</td><td class="seperator">:</td><td>' + jsondata[i].versnelling + '</td>';
        newdiv += '<tr><td>Remsoort</td><td class="seperator">:</td><td>' + jsondata[i].remsoort + '</td>';
        if (jsondata[i].kinderzitje) {
            newdiv += '<tr><td>Kinderzitje</td><td class="seperator">:</td><td>ja</td>';
        } else {
            newdiv += '<tr><td>Kinderzitje</td><td class="seperator">:</td><td>nee</td>';
        }

        var kleuren = "";
        for (var j = 0; j < jsondata[i].kleurCollection.length; j++) {
            kleuren += jsondata[i].kleurCollection[j].naam + " / ";
        }
        kleuren = kleuren.substring(0, kleuren.length - 2);
        newdiv += '<tr><td>Kleuren opties</td><td class="seperator">:</td><td>' + kleuren + '</td>';

        var frametypes = "";
        for (var j = 0; j < jsondata[i].hdkCollection.length; j++) {
            frametypes += jsondata[i].hdkCollection[j].naam + " / ";
        }
        frametypes = frametypes.substring(0, frametypes.length - 2);
        newdiv += '<tr><td>Frame type</td><td class="seperator">:</td><td>' + frametypes + '</td>';

        var framehoogtes = "";
        for (var j = 0; j < jsondata[i].framehoogteCollection.length; j++) {
            framehoogtes += jsondata[i].framehoogteCollection[j].hoogte + " / ";
        }
        framehoogtes = framehoogtes.substring(0, framehoogtes.length - 2);
        newdiv += '<tr><td>Framehoogtes</td><td class="seperator">:</td><td>' + framehoogtes + '</td>';
        newdiv += '</table></div></div></div>';
        console.log(id);
    }
        }
        else {
            newdiv +='<div><div><img class="center-block" src="../images/sad-face.png" alt="sad emoij"></div>';
            newdiv +='<h2 style="text-align: center">Helaas, er zijn geen producten gevonden.</h2>';
            newdiv +='<h2 style="text-align: center">Pas uw zoekopdracht aan en probeer het nog eens</h2></div>';
    }
    window.scrollTo(0, 0);
    document.getElementById('products').innerHTML = newdiv;
}
$(document).ready(function() {
    $('#gazelle').click(function() {
       get("../models/search/findByMerk?merk=Gazelle")
    });

    $('#batavus').click(function() {
        get("../models/search/findByMerk?merk=Batavus")
    });

    $('#cortina').click(function() {
        get("../models/search/findByMerk?merk=Cortina")
    });

    $('#gettype').click(function() {
        var type = $('#modeltype').val();
        get("../models/search/findModelByType?type=" + type)
    });

    $('#getframehoogte').click(function() {
        var framehoogte = $('#modelframehoogte').val();
        get("../models/search/findModelByFramehoogteCollectionHoogte?hoogte=" + framehoogte)
    });

    $('#getkleur').click(function() {
        var kleur = $('#modelkleur').val();
        get("../models/search/findModelByKleurCollectionNaam?kleur=" + kleur)
    });

    $('#getversnellingen').click(function() {
        var versnellingen = $('#versnellingen').val();
        get("../models/search/findModelByVersnellingEquals?versnellingen=" + versnellingen)
    });

    $('#getremmen').click(function() {
        var remmen = $('#remmen').val();
        get("../models/search/findModelByRemsoort?remsoort=" + remmen)
    });

    $('#kinderzitjeja').click(function() {
        get("../models/search/findModelByKinderzitjeTrue")
    });

    $('#kinderzitjenee').click(function() {
        get("../models/search/findModelByKinderzitjeFalse")
    });
    $('#getbudgettype').click(function() {
        var typeb = $('#modeltype2').val();
        var budget2 =$('#budget2').val();
        get("../models/search/findModelByTypeAndPrijsLessThanEqual?type=" + typeb + "&prijs=" + budget2)
    });

    $('#getbudget').click(function() {
        var budget =$('#budget').val();
        get("../models/search/findByPrijsIsLessThanEqual?prijs=" + budget)
    });
});


function get(url) {
    $(document).ready(function() {
    $('#products').empty();
    $.ajax({
        url: url,
        method: 'GET',
        dataType: 'json',
        success: function (data) {
            writediv(data._embedded.models);
            console.log("no errors");
            console.log("data");
        },
        error: function (requestObject, error, errorThrown) {
            console.log("error thrown, add handler to exit gracefully");
        },
        timeout: 3000 //to do: research and develop further in combination with error handling
    });
    });
}

console.log("no errors, script head");


