window.onload = function() {
    var only=document.getElementsByTagName("Only");
    if (only = "Home"){
        var ull = document.getElementsByTagName("li");
        ull.className = "";
        var itemss=document.getElementById("home");
        console.log("Home");
        itemss.className="active";
    }else if (only = "Class"){
        var ull = document.getElementsByTagName("li");
        ull.className = "";
        var itemss=document.getElementById("classname");
        console.log("Class");
        itemss.className="active";
    }else if (only = "Data"){
        var ull = document.getElementsByTagName("li");
        ull.className = "";
        var itemss=document.getElementById("data");
        console.log("Data");
        itemss.className="active";
    }else if (only = "NewData"){
        var ull = document.getElementsByTagName("li");
        ull.className = "";
        var itemss=document.getElementById("newdata");
        console.log("NewData");
        itemss.className="active";
    }else if (only = "Course"){
        var ull = document.getElementsByTagName("li");
        ull.className = "";
        var itemss=document.getElementById("course");
        console.log("Course");
        itemss.className="active";
    }else if (only = "NewCourse"){
        var ull = document.getElementsByTagName("li");
        ull.className = "";
        var itemss=document.getElementById("newcourse");
        console.log("NewCourse");
        itemss.className="active";
    }else if (only = "Sign"){
        var ull = document.getElementsByTagName("li");
        ull.className = "";
        var itemss=document.getElementById("sign");
        console.log("Sign");
        itemss.className="active";
    }else if (only = "SignInformation"){
        var ull = document.getElementsByTagName("li");
        ull.className = "";
        var itemss=document.getElementById("signinformation");
        console.log("SignInformation");
        itemss.className="active";
    }else if (only = "Live"){
        var ull = document.getElementsByTagName("li");
        ull.className = "";
        var itemss=document.getElementById("live");
        console.log("Live");
        itemss.className="active";
    }else if (only = "MyInfo"){
        var ull = document.getElementsByTagName("li");
        ull.className = "";
        var itemss=document.getElementById("myinfo");
        console.log("MyInfo");
        itemss.className="active";
    }
}