$(document).ready(function() {
	// Parallax effect
  $('.parallax').parallax();

	// Mobile navbar
	$(".button-collapse").sideNav();
}); // end of document ready

$(document).ready(function() {
  var max_fields      = 10; //maximum input boxes allowed
  var inputs         = $("#input-field"); //Fields wrapper
  var wrapper = $("#chapter-form");
  var add_button      = $(".add_field_button"); //Add button ID

  var x = 1;
  $(add_button).on("click", function(e){
    console.log("HELOO");
    e.preventDefault();
    if(x < max_fields){
      x++;
      $(wrapper).append(inputs.clone());

    }
  });
});
