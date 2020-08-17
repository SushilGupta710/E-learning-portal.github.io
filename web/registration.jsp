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
                            <form action="register" id="form" method="POST" class="form">
                                <div class="row">
                                    <div class="col-md-6">
                                        <label>Name</label>
                                        <div class="form-group">
                                            <input type="text" class="form-control" name="name" id="name" placeholder="Enter your name"/>
                                            <i class="far fa-check-circle"></i>
                                            <i class="fas fa-exclamation-circle"></i>
                                            <small>hello</small>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <label>Username</label>
                                        <div class="form-group">
                                            <input type="text" class="form-control" name="username" id="username" placeholder="Enter a Username" />
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
                                            <input type="email" class="form-control" name="email" id="email" placeholder="Enter your email" autocomplete="false"/>
                                            <i class="far fa-check-circle"></i>
                                            <i class="fas fa-exclamation-circle"></i>
                                            <small>hello</small>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <label>Contact</label>
                                        <div class="form-group">
                                            <input type="text" class="form-control" name="contact" id="contact" placeholder="Enter your contact" />
                                            <i class="far fa-check-circle"></i>
                                            <i class="fas fa-exclamation-circle"></i>
                                            <small>hello</small>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <label>Password</label>
                                        <div class="form-group">
                                            <input type="password" class="form-control" name="password" id="password" placeholder="Enter a password"/>
                                            <i class="far fa-check-circle"></i>
                                            <i class="fas fa-exclamation-circle"></i>
                                            <small>hello</small>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <label>Confirm Password</label>
                                        <div class="form-group">
                                            <input type="password" class="form-control" name="cpassword" id="cpassword" placeholder="Confirm your password"/>
                                            <i class="far fa-check-circle"></i>
                                            <i class="fas fa-exclamation-circle"></i>
                                            <small>hello</small>
                                        </div>
                                    </div>
                                </div>
                                <div class="row justify-content-center">
                                    <div class="col-md-6">
                                        <input type="submit" value="Submit" class="btn" />
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
                event.preventDefault(); //it will not allow to submit a value
                validate();
            });
            const sendData = (sRate, scount) => {
                if (sRate === scount) {
                    alert('registration successfull');
//                    location.href="login.jsp";
                }
                else{
                    
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
//                if (count === 5 ) {
//                    alert('registration successfull1');
//                    formval.addEventListener("submit", (event) => {
//                        event.stopPropagation();
//                        location.href="login.jsp"
//                    });
//                }
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

            const validate = () => {
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
                } else {
                    setSuccessMsg(name);
                }
                // validate username
                if (usernameVal === "") {
                    //         field name,error msg
                    setErrorMsg(username, "Username cannot be empty");
                } else if (usernameVal.length < 3) {
                    setErrorMsg(username, "Username min 3 character");
                } else {
                    setSuccessMsg(username);
                }
                // validate email
                if (emailVal === "") {
                    setErrorMsg(email, "Email cannot be empty");
                } else if (!isEmail(emailVal)) {
                    setErrorMsg(email, "email is not valid");
                } else {
                    setSuccessMsg(email);
                }
                // validate contact
                if (contactVal === "") {
                    setErrorMsg(contact, "Contact cannot be empty");
                } else if (contactVal.length < 10) {
                    setErrorMsg(contact, "Contact length is not valid");
                } else {
                    setSuccessMsg(contact);
                }
                // validate password
                if (passwordVal === "") {
                    setErrorMsg(password, "Password cannot be empty");
                } else if (passwordVal.length < 5) {
                    setErrorMsg(password, "Password min 5 character");
                } else {
                    setSuccessMsg(password);
                }
                // validate cpassword
                if (cpasswordVal === "") {
                    setErrorMsg(cpassword, "Confirm Password cannot be empty");
                } else if (passwordVal !== cpasswordVal) {
                    setErrorMsg(cpassword, "Password does not match");
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
        </script>
    </body>
</html>