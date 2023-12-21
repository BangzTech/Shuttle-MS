function check(){
    var fname = document.getElementById("name").value;
    var phone = document.getElementById("phone").value;
    var psw = document.getElementById("psw").value;
    var psw2 = document.getElementById("psw2").value;
    var type = document.getElementById("type").value;
    if(fname.length<2){
        alert("Please enter a valid first name");
    }else if(phone.length!==11){
        alert("Please enter a valid phone number");
    }else if(psw.length<6){
        alert("Password must be at least 6 characters");
    }else if(psw!==psw2){
        alert("Password mismatch");
    }else if(type.length<6){
        alert("Please select your user type");
    }else{
        document.getElementById("form").submit();
    }                                      
}

