$(document).ready(function() {


  $(document).on('click', '.menu-principal a', function() {
    if($('#main-header').hasClass('no-sticky')){
      $('html, body').animate({scrollTop: $(this.hash).offset().top - 415}, 1700)
    }
    else{
      $('html, body').animate({scrollTop: $(this.hash).offset().top - 90}, 900)
    }   
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
    header.removeClass('no-sticky');
    main.removeClass('no-under-sticky');
  } else {
    header.removeClass('sticky');
    header.addClass('no-sticky');
    main.addClass('no-under-sticky');
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


$(function() {
  var fieldsCount,
      maxFieldsCount = 4,
      $addLink = $('a.add_nested_fields');

  function toggleAddLink() {
    $addLink.toggle(fieldsCount <= maxFieldsCount)
  }

  $(document).on('nested:fieldAdded', function() {
    fieldsCount += 1;
    toggleAddLink();
  });

  $(document).on('nested:fieldRemoved', function() {
    fieldsCount -= 1;
    toggleAddLink();
  });

  // count existing nested fields after page was loaded
  fieldsCount = $('form .fields').length;
  toggleAddLink();
})
