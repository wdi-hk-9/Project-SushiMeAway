$(document).ready(function(){
  // show description on restaurant porfile
  $('.open').on("click", function(){
    $('.showDescription').slideToggle('slow');
    if($(this).text() == '(close)'){
      $(this).text('(Click me!)');
    }else{
      $(this).text('(close)');
    }
  });
});
