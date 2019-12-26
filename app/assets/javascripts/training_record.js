// $(function () {
//   $("#new_training_record").on("ajax:error", function (event, jqXHR, ajaxSettings, thrownError) {
//     var data = jqXHR.responseJSON;
//     alert(data);
//   });
// });
$(function () {
  $("#new_training_record").on("ajax:success", function (event, xhr, settings) {
    alert("登録が完了しました。");
  });
});