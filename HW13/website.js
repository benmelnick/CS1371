$(function() {
    $(".dropdown ul li a").click(function() {
        var param = $(this).attr('id');
        var url = "class=" + String(param);

        $.get(
        "http://cs1371.gatech.edu/getClassInfo/?" + String(url),
        function(data) {
           var parsed = $.parseJSON(data);
           $("#calculator").removeClass("hidden");

           $.each(parsed, function(index, element){
              var id = "#" + String(index) + "2";
              $(String(id)).val(Number(element));
              $(String(id)).prop('disabled', true);
           });

        });

    });

    $("#custom").click(function() {

        $(".weight").each(function(){
            $("#calculator").removeClass("hidden");
            $(this).prop('disabled', false);
            $(this).attr("placeholder", "Weight");
        });
    });

    $("#sbmit").click(function() {
        var total = 0;
        $(".input-group").each(function(index, element){
            var score = parseInt($(this).find(".score").val());
            var weight = parseInt($(this).find(".weight").val()) / 100;
            total += score*weight;
        });

        $("#answer").html("<h3 class=\"pull-right\">" + String(total.toFixed(2)) + "%</h3>");
    });

    $("#magic_button").click(function() {
        var total = 0;
        $(".input-group").each(function(index, element){
          if($(this).find(".score").attr("id") != "final_exam") {
            var score = parseInt($(this).find(".score").val());
            var weight = parseInt($(this).find(".weight").val()) / 100;
            total += score*weight;
          }
        });

        weight = parseInt($("#final_exam2").val())/100;
        var answer = ($("#magic_input").val() - total)/weight;

        $("#answer").html("<h3 class=\"pull-right\">" + String(answer.toFixed(2)) + "%</h3>");
    });

});
