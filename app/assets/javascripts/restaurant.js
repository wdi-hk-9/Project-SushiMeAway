$(document).ready(function(){
  // show description on restaurant porfile
  $('.open').click(function(){
    $('.showDescription').slideToggle('slow');
    if($(this).text() == '(close)'){
      $(this).text('(show more)');
    }else{
      $(this).text('(close)');
    }
  });
});