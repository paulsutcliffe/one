$(document).ready(function() {


  $(document).on('click', '.menu-principal a', function() {
    $('html, body').animate({scrollTop: $(this.hash).offset().top - 300})
    return false; 
  });

  jQuery('.menu-principal-wrapper').scrollspy();
  header_class();
});

$(document).scroll(function() {
 header_class();
});

function header_class() {
  dista = $(document).scrollTop();
  header = $('#main-header');

  if (dista > 400) {
    header.addClass('sticky');
  } else {
    header.removeClass('sticky');
  }
}
