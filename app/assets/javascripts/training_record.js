// $(function () {
//   $("#new_training_record").on("ajax:error", function (event, jqXHR, ajaxSettings, thrownError) {
//     var data = jqXHR.responseJSON;
//     alert(data);
//   });
// });
$(function () {
  $(document).on('click','.event_item_title',function() {
    console.log('クリックしたよ');
    $(this).next('dd').slideToggle();
  });
});