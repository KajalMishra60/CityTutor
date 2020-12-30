function formValidation()
{
    var name = document.forms["RegForm"]["name"];              
    var email = document.forms["RegForm"]["Email"];   
    var phone = document.forms["RegForm"]["Contact"]; 
    var password = document.forms["RegForm"]["Pass"]; 
    var address = document.forms["RegForm"]["Adrs"]; 
    var letters = /^[A-Za-z]+$/;
  
    if (name.value == ""&& uname.value.match(letters)==true)                                 
    {
    	
        window.alert("Please enter your name.");
        name.focus();
        return false;
    }
  
    if (address.value == "")                              
    {
        window.alert("Please enter your address.");
        address.focus();
        return false;
    }
      
    if (email.value == "")                                  
    {
        window.alert("Please enter a valid e-mail address.");
        email.focus();
        return false;
    }
  
    if (email.value.indexOf("@", 0) < 0)                
    {
        window.alert("Please enter a valid e-mail address.");
        email.focus();
        return false;
    }
  
    if (email.value.indexOf(".", 0) < 0)                
    {
        window.alert("Please enter a valid e-mail address.");
        email.focus();
        return false;
    }
  
    if (phone.value == "")                          
    {
        window.alert("Please enter your telephone number.");
        phone.focus();
        return false;
    }
  
    if (password.value == "")                       
    {
        window.alert("Please enter your password");
        password.focus();
        return flase;
    }
  
    
    return true;
}
