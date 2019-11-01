$(function(){
    //classes use dots, ids use #
    $("#info").click(function(){ //when anything with the id 'info' is clicked, run the function
        alert("Start by choosing a course. If your course is not listed, click 'Custom Calculator' to manually enter the category weights. If you have taken your final and know your grade, input the grade and click 'Calculate Final Grade.' Otherwise, only enter the weight of your final, what grade you would like to receive in the class, and click 'Calculate Score on Final Exam.' Be sure to enter your extra credit, even if you have none.");
    });

    //selecting present class from dropdown
    $(".w3-dropdown-hover ul li a").click(function() {
        var param = $(this).attr("id"); //find the name of the course that was chosen
        var url = "class=" + String(param); //append course name to "class="

        //get data from the url
        $.get(
        "http://cs1371.gatech.edu/getClassInfo/?" + String(url), //create new url
        function(data) {
           var parsed = $.parseJSON(data);

           //gets JSON data, and then iterate through every element of JSON data
           $.each(parsed, function(index, element){ //index and element are variables that can be used inside of the iteration
              //index represents the category, element represents the value of that category
              var id = "#" + String(index) + "2"; //finding id for weight to change - weight is always ____2
              $(String(id)).val(Number(element)); //change value of category
              $(String(id)).prop('disabled', true);
           });

        });

        $(".input-group").each(function (index,element) {
            $(this).find(".score").val(""); //empty value of all the score input fields
        });

    });

    //calculate final grade if final exam score is known
    $("#gradeCalc").click(function(){
        //determine if weights equal 100 percent
        var totalWeight = 0;
        $(".input-group").each(function(index,element){
            if($(this).find(".score").attr("id") != "extra_credit"){ //find weight of every input-group except extra credit (has no weight)
                var weight = parseInt($(this).find(".weight").val());
                totalWeight += weight;
            }
        });

        if(totalWeight == 100){
            var total = 0;
            var extra = parseInt($("#extra_credit").val());
            $(".input-group").each(function(index,element){ //iterate through every div with input group class
                if($(this).find(".score").attr("id") != "extra_credit"){
                    var score = parseInt($(this).find(".score").val()); //searches inputs with class of 'score', parses to int
                    var weight = parseInt($(this).find(".weight").val()) / 100; //searches inputs with class of 'weight', parses to int
                    total += score*weight;
                }
            });
            total += extra;
            $("#answer").html("<h3>Score: " + String(total.toFixed(2)) + "%</h3>"); //changes html code of answer div
        }
        else{
            alert("Your category weights do not equal 100. Try again.")
        }
    });

    //calculate score for final exam
    $("#examCalc").click(function() {
        //determine if weights equal 100 percent
        var totalWeight = 0;
        $(".input-group").each(function(index,element){
            if($(this).find(".score").attr("id") != "extra_credit"){ //find weight of every input-group except extra credit (has no weight)
                var weight = parseInt($(this).find(".weight").val());
                totalWeight += weight;
            }
        });

        if(totalWeight == 100){
            var total = 0;
            var extra = parseInt($("#extra_credit").val());

            $(".input-group").each(function(index, element){ //go through every input-group
                //calculate score before the final exam
              if($(this).find(".score").attr("id") != "final_exam" && $(this).find(".score").attr("id") != "extra_credit") { //find points towards grade from every category except the final exam
                var score = parseInt($(this).find(".score").val());
                var weight = parseInt($(this).find(".weight").val()) / 100;
                total += score*weight;
              }
              if($(this).find(".score").attr("id") == "extra_credit"){ //finding the value of extra credit to be added on at the end
                extra = parseInt($(this).find(".score").val());
              }
            });
            total += extra; //total grade before the final including any extra credit

            weight = parseInt($("#final_exam2").val())/100; //find the weight of the final exam category
            //formula for grade: (desired score - total before exam) / final exam weight
            var gradeNeeded = ($("#grade").val() - total)/weight; //calculate grade needed on final exam to get desired grade

            $("#answer").html("<h3>Score: " + String(gradeNeeded.toFixed(2)) + "%</h3>");
        }
        else{
            alert("Your category weights do equal 100. Try again.");
        }
    });

    //allows user to enter their own weights
    $("#custom").click(function(){
        $(".weight").each(function(index,element){
             //makes every weight enabled except for extra credit - extra credit has no weight
            $(this).prop('disabled', false); //changes disabled property to false

        });
    });

});