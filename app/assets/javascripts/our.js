$(document).ready(function() {
	// Parallax effect
  $('.parallax').parallax();

	// Mobile navbar
	$(".button-collapse").sideNav();

	// Prevent default action on action links inside collapsible
	$(".inner-action").on("click", "a", function(event) {
		event.stopPropagation();
	});

  var max_fields      = 10; //maximum input boxes allowed
  var inputs          = $("#input-field"); //Fields wrapper
  var wrapper         = $("#chapter-form");
  var add_button      = $(".add_field_button"); //Add button ID
  var x               = 1;
  var form_btn        = $("#form-btn");

  $(add_button).on("click", function(e){
    e.preventDefault();
    if(x < max_fields){
      x++;
      var each_form = inputs;
      $(wrapper).append(inputs.clone());
    }
  });
});
