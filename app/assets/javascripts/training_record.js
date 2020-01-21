$(function () {

  // 種目のトグル
  $(document).on('click','.event_item_title',function() {
    // console.log('クリックしたよ');
    $(this).next('dd').slideToggle();
  });

  // 種目登録のモーダル
  $(document).on('click', 'i.fa-info-circle', function() {
    // console.log('クリックしたよ');
    var target = $('.modal.register_nonexist_event');
    target.fadeIn();
  })

  $('.modalBg').click(function() {
    // console.log('クリックしたよ');
    var target = $('.modal.register_nonexist_event');
    target.fadeOut();
  })

});