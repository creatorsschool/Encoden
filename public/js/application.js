$(document).ready(function() {
  var max_fields      = 10; //maximum input boxes allowed
  var wrapper         = $(".input_fields_wrap"); //Fields wrapper
  var add_button      = $(".add_field_button"); //Add button ID
  
  var x = 1; //initlal text box count
$(add_button).click(function(e){ //on add input button click
      e.preventDefault();
      if(x < max_fields){ //max input box allowed
          x++; //text box increment
$(wrapper).append('<h4>Chapter Number #</h4><form class="user-form" action="/course/add/<%= @user.id %>" method="post"><input type="text" name="chapter_name" class="form-control" placeholder="Chapter Name" required><input type="textarea" name="chapter_description" class="form-control" placeholder="Chapter Description" required>'); //add input box
      }
  });
$(wrapper).on("click",".remove_field", function(e){ //user click on remove text
      e.preventDefault(); $(this).parent('div').remove(); x--;
  })
});