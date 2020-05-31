$(function () {
    var only = $("#Only").text();
    console.log(only);
    if(only == "MyAllClass"){
        $("#myallclass").addClass("active");
    }
    if(only == "Course"){
        $("#course").addClass("active");
    }
    if(only == "Data"){
        $("#data").addClass("active");
    }
    if(only == "Home"){
        $("#home").addClass("active");
    }
    if(only == "Live"){
        $("#live").addClass("active");
    }
    if(only == "MyInfo"){
        $("#myinfo").addClass("active");
    }
    if(only == "Sign"){
        $("#sign").addClass("active");
    }
    if(only == "AllSignInfo"){
        $("#allsigninfo").addClass("active");
    }
})