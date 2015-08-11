$(function() {

  $('#search_form input').on('keyup', function(event) {
    event.preventDefault();

    input = $('#search_form input').val();

    $.ajax("/search?search=" + input, {
      success: function(data) {
        $('#postsList').html('');

        data.forEach(function(post) {
          $('#postsList').append('<li>' + post.title + '</li>')
        });
      }
    });
  });

});
