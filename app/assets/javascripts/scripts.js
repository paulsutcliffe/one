$(document).ready(function() {


  $(document).on('click', '.menu-principal a', function() {
    $('html, body').animate({scrollTop: $(this.hash).offset().top - 90})
    return false; 
  });

  $('body').scrollspy({ target: '.menu-principal-wrapper', offset: 100 })
  
  header_class();
  if_window_gt_1500();
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


function if_window_gt_1500() {
  cont = $('.if-mega-container');
  row= $('.if-mega-row');
  ancho = $(window).width();
  if (ancho > 1600) {
    cont.addClass('container');
    row.addClass('row');
  } else {
    cont.removeClass('container');
    row.removeClass('row');    
  } 
}

$(document).on('resize', function() {
  if_window_gt_1500();
});
