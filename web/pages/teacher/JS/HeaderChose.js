window.onload = function() {
    var only=document.getElementById("Only");
    console.log(only);
    if (only.innerText = "Home"){
        var ull = document.getElementsByTagName("li");
        ull.className = "";
        var itemss=document.getElementById("home");
        console.log("Home");
        itemss.className="active";
    }else if (only.innerText = "Class"){
        var ull = document.getElementsByTagName("li");
        ull.className = "";
        var itemss=document.getElementById("classname");
        console.log("Class");
        itemss.className="active";
    }else if (only.innerText = "Data"){
        var ull = document.getElementsByTagName("li");
        ull.className = "";
        var itemss=document.getElementById("data");
        console.log("Data");
        itemss.className="active";
    }else if (only.innerText = "NewData"){
        var ull = document.getElementsByTagName("li");
        ull.className = "";
        var itemss=document.getElementById("newdata");
        console.log("NewData");
        itemss.className="active";
    }else if (only.innerText = "Course"){
        var ull = document.getElementsByTagName("li");
        ull.className = "";
        var itemss=document.getElementById("course");
        console.log("Course");
        itemss.className="active";
    }else if (only.innerText = "NewCourse"){
        var ull = document.getElementsByTagName("li");
        ull.className = "";
        var itemss=document.getElementById("newcourse");
        console.log("NewCourse");
        itemss.className="active";
    }else if (only.innerText = "Sign"){
        var ull = document.getElementsByTagName("li");
        ull.className = "";
        var itemss=document.getElementById("sign");
        console.log("Sign");
        itemss.className="active";
    }else if (only.innerText = "SignInformation"){
        var ull = document.getElementsByTagName("li");
        ull.className = "";
        var itemss=document.getElementById("signinformation");
        console.log("SignInformation");
        itemss.className="active";
    }else if (only.innerText = "Live"){
        var ull = document.getElementsByTagName("li");
        ull.className = "";
        var itemss=document.getElementById("live");
        console.log("Live");
        itemss.className="active";
    }else if (only.innerText = "MyInfo"){
        var ull = document.getElementsByTagName("li");
        ull.className = "";
        var itemss=document.getElementById("myinfo");
        console.log("MyInfo");
        itemss.className="active";
    }
}