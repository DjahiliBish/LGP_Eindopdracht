

<!--navbar and footer placeholder-->
$(document).ready(function () {
    $("#nav-placeholder").load("nav.html");
    $("#footer-placeholder").load("footer.html");
});


<!-- jquery price slider-->

$( function() {
    $( "#slider_range" ).slider({
        range: true,
        min: 0,
        max: 1500,
        values: [ 75, 300 ],
        slide: function( event, ui ) {
            $( "#amount" ).val( "$" + ui.values[ 0 ] + " - $" + ui.values[ 1 ] );
        }
    });
    $( "#amount" ).val( "$" + $( "#slider_range" ).slider( "values", 0 ) +
        " - $" + $( "#slider_range" ).slider( "values", 1 ) );
} );
<!--javascript priceslider-->
var rangeSlider = function(){
    var slider = $('.slidecontainer'),
        range = $('.min_price'),
        value = $('.min_price_value');

    slider.each(function(){

        value.each(function(){
            var value = $(this).prev().attr('value');
            $(this).html(value);
        });

        range.on('input', function(){
            $(this).next(value).html(this.value);
        });
    });
};

rangeSlider();
