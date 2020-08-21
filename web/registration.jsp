<%-- 
    Document   : registration
    Created on : 13 Aug, 2020, 4:03:13 PM
    Author     : Sushil Gupta
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="bootstraplinks.jsp" %>
<%@include file="navbar.jsp" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Registration</title>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <!--css file-->
        <link rel="stylesheet" href="css/registrationstyle.css" >
        <script src="https://kit.fontawesome.com/a076d05399.js"></script>
    </head>
    <body onload="myLoader()">
        <div id="loading"></div>
        <div class="container mt-5">
            <div class="row mymedia">
                <div class="col-md-8 mx-auto">
                    <div class="card">
                        <div class="row">
                            <div class="col">
                                <div class="card-header header text-center"><h1>Registration</h1></div>
                            </div>
                        </div>
                        <div class="card-body">
                            <form action="register" id="form" method="post" class="form" >
                                <div class="row">
                                    <div class="col-md-6">
                                        <label>Name</label>
                                        <div class="form-group">
                                            <input type="text" class="form-control" name="name" id="name" placeholder="Enter your name" required/>
                                            <i class="far fa-check-circle"></i>
                                            <i class="fas fa-exclamation-circle"></i>
                                            <small>hello</small>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <label>Username</label>
                                        <div class="form-group">
                                            <input type="text" class="form-control" name="username" id="username" placeholder="Enter a Username" required/>
                                            <i class="far fa-check-circle"></i>
                                            <i class="fas fa-exclamation-circle"></i>
                                            <small>hello</small>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <label>Email</label>
                                        <div class="form-group">
                                            <input type="email" class="form-control" name="email" id="email" placeholder="Enter your email" autocomplete="false" required/>
                                            <i class="far fa-check-circle"></i>
                                            <i class="fas fa-exclamation-circle"></i>
                                            <small>hello</small>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <label>Contact</label>
                                        <div class="form-group">
                                            <input type="text" class="form-control" name="contact" id="contact" placeholder="Enter your contact" required/>
                                            <i class="far fa-check-circle"></i>
                                            <i class="fas fa-exclamation-circle"></i>
                                            <small>hello</small>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <label>Password</label>
                                        <div class="form-group password">
                                            <input type="password" class="form-control" name="password" id="password" placeholder="Enter a password" required/>
                                            <i class="far fa-check-circle"></i>
                                            <i class="fas fa-exclamation-circle"></i>
                                            <i class="fas fa-eye visibility"></i>
                                            <small>hello</small>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <label>Confirm Password</label>
                                        <div class="form-group password1">
                                            <input type="password" class="form-control" name="cpassword" id="cpassword" placeholder="Confirm your password" required/>
                                            <i class="far fa-check-circle"></i>
                                            <i class="fas fa-exclamation-circle"></i>
                                            <i class="fas fa-eye visibility1"></i>
                                            <small>hello</small>
                                        </div>
                                    </div>
                                </div>
                                <div class="row justify-content-center">
                                    <div class="col-md-6">
                                        <input type="submit" value="submit" class="btn"/>
                                    </div>
                                </div>
                                <div class="row justify-content-center mt-2">
                                    <div class="col-md-6 text-center text-danger">
                                        <a href="login.jsp">Already have an account</a>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <script type="text/javascript">
            const form = document.getElementById("form");
            const name = document.getElementById("name");
            const username = document.getElementById("username");
            const email = document.getElementById("email");
            const contact = document.getElementById("contact");
            const password = document.getElementById("password");
            const cpassword = document.getElementById("cpassword");

            form.addEventListener("submit", (event) => {
//                event.preventDefault(); //it will not allow to submit a value
                validate();
            });
            const sendData = (sRate, scount) => {
                if (sRate === scount) {
                    alert('registration successfull');
                } else {

                }
            }
            //for final data validation
            const SuccessMsg = () => {
                let formGroup = document.getElementsByClassName('form-group');
                let formval = document.getElementById('form');
                var count = formGroup.length - 1;
                for (var i = 0; i < formGroup.length; i++) {
                    if (formGroup[i].className === "form-group success") {
                        var successRate = 0 + i;
                        console.log(successRate);
                        sendData(successRate, count);//passing argument
                    } else {
                        return false;
                    }
                }
            }


            const isEmail = (emailpar) => {
                var atSymbol = emailpar.indexOf("@");
                if (atSymbol < 1)
                    return false;
                var dot = emailpar.lastIndexOf(".");
                if (dot <= atSymbol + 2)
                    return false;
                if (dot === emailpar.length - 1)
                    return false;
                return true;
            };

            function validate(){
                const nameVal = name.value.trim();
                const usernameVal = username.value.trim();
                const emailVal = email.value.trim();
                const contactVal = contact.value.trim();
                const passwordVal = password.value.trim();
                const cpasswordVal = cpassword.value.trim();

                // validate name
                if (nameVal === "") {
                    //         field name,error msg
                    setErrorMsg(name, "Name cannot be empty");
                    return false;
                } else {
                    setSuccessMsg(name);
                }
                // validate username
                if (usernameVal === "") {
                    //         field name,error msg
                    setErrorMsg(username, "Username cannot be empty");
                    return false;
                } else if (usernameVal.length < 3) {
                    setErrorMsg(username, "Username min 3 character");
                    return false;
                } else {
                    setSuccessMsg(username);
                }
                // validate email
                if (emailVal === "") {
                    setErrorMsg(email, "Email cannot be empty");
                    return false;
                } else if (!isEmail(emailVal)) {
                    setErrorMsg(email, "email is not valid");
                    return false;
                } else {
                    setSuccessMsg(email);
                }
                // validate contact
                if (contactVal === "") {
                    setErrorMsg(contact, "Contact cannot be empty");
                    return false;
                } else if (contactVal.length < 10) {
                    setErrorMsg(contact, "Contact length is not valid");
                    return false;
                } else {
                    setSuccessMsg(contact);
                }
                // validate password
                if (passwordVal === "") {
                    setErrorMsg(password, "Password cannot be empty");
                    return false;
                } else if (passwordVal.length < 5) {
                    setErrorMsg(password, "Password min 5 character");
                    return false;
                } else {
                    setSuccessMsg(password);
                }
                // validate cpassword
                if (cpasswordVal === "") {
                    setErrorMsg(cpassword, "Confirm Password cannot be empty");
                    return false;
                } else if (passwordVal !== cpasswordVal) {
                    setErrorMsg(cpassword, "Password does not match");
                    return false;
                } else {
                    setSuccessMsg(cpassword);
                }

                SuccessMsg();
            };

            function setErrorMsg(input, errormsg) {
                const formGroup = input.parentElement;
                const small = formGroup.querySelector("small");
                formGroup.className = "form-group error";
                small.innerText = errormsg;
            }
            function setSuccessMsg(input) {
                const formGroup = input.parentElement;
                formGroup.className = "form-group success";
            }

            var preloader = document.getElementById('loading');
            const myLoader = () => {
                preloader.style.display = 'none';
            }
            
//            for password show and hide
        const visibleToggle=document.querySelector(".visibility");
        const input=document.querySelector(".password input");
        var pass=true;
        visibleToggle.addEventListener('click',function(){
            if(pass){
                input.setAttribute('type','text');
            }else{
                input.setAttribute('type','password');
            }
            pass=!pass;
        });
        </script>
        <script type="text/javascript">
            
//        2nd toggle password
        const visibleToggle1=document.querySelector(".visibility1");
        const input1=document.querySelector(".password1 input");
        var pass1=true;
        visibleToggle1.addEventListener('click',function(){
            if(pass1){
                input1.setAttribute('type','text');
            }else{
                input1.setAttribute('type','password');
            }
            pass1=!pass1;
        });
        </script>
    </body>
</html>