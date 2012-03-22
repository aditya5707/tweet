// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require_t$

$(document).ready(function(){
    var url =  location.href;

   $("#submit_comment").click(function(event)
   {
       event.preventDefault()
    //   var url =  location.href
       //event.preventDefault();

        var username = $("#username input").val();
        var comment = $("#content input").val();
      
        //alert(url);
        //alert(username);
       
       $.get(url,{ "username":username,"comment":comment})




   });


$(".deleteComment").click(function(event){

//    $(this).parent("li").hide();
    event.preventDefault();
//    var url = location.href;
    var v = $("#comment_id").innerHTML;
//    $.get("/comments",{"user":" ","comment":" "})
    alert(v);

});
    

});