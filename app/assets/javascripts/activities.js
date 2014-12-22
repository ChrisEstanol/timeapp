
$( document ).ready(function (){

  $('#add-activity').click(function(e) {

       $(this).toggleClass('btn-danger');
        if ($(this).val() == "Stop") {
          $('#add-activity').val("Start");
        } else {
          $('#add-activity').val("Stop");
        }
        //$(this).preventDefault();
    });

});
