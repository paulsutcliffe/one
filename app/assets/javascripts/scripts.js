$(document).ready(function() {


  $(document).on('click', '.menu-principal a', function() {
    $('html, body').animate({scrollTop: $(this.hash).offset().top - 90})
    return false; 
  });

  $('body').scrollspy({ target: '.menu-principal-wrapper', offset: 100 })
  
  header_class();
});

$(document).scroll(function() {
 header_class();
});

function header_class() {
  dista = $(document).scrollTop();
  header = $('#main-header');
  main = $('#main');

  if (dista > 400) {
    header.addClass('sticky');
    main.addClass('under-sticky');
  } else {
    header.removeClass('sticky');
    main.removeClass('under-sticky');
  }
}
