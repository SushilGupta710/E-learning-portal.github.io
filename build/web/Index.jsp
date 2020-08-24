<%-- 
    Document   : Index.jsp
    Created on : 13 Aug, 2020, 3:46:34 PM
    Author     : Sushil Gupta
--%>

<%@page import="com.portal.LearnDAO"%>
<%@page import="com.portal.LearnPOJO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="bootstraplinks.jsp" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Home</title>
        <style>.nav-img{
                width:6vh;
            }</style>
        <!-- animation link -->
        <link rel="stylesheet" href="https://unpkg.com/aos@next/dist/aos.css" />
        <link rel="stylesheet" href="css/indexstyle.css">
    </head>
    <body onload="myLoader()">
        <!--loader-->
        <div id="loading"></div>
        <!--ed of loader-->

        <!--navbar-->
        <nav class="navbar navbar-expand-sm navbar-dark bg-danger navbar-fixed">
            <!-- Logo of our website -->
            <a class="navbar-brand" href="Index.jsp"> <img class="nav-img" src="Logo/elearning.png" alt=""> E-learning</a>

            <button class="navbar-toggler d-lg-none" type="button" data-toggle="collapse" data-target="#collapsibleNavId" aria-controls="collapsibleNavId"
                    aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="collapsibleNavId">
                <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
                    <li class="nav-item active">
                        <a class="nav-link" href="Index.jsp#Home">Home <span class="sr-only">(current)</span></a>
                    </li>
                    <%
                        String username = (String) session.getAttribute("session_name");
                        if (username != null) {
                    %>
                    <li class="nav-item">
                        <a class="nav-link" href="Index.jsp#Courses">Courses</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="Index.jsp#">Take Quiz</a>
                    </li>
                    <% }%> 
                    <li class="nav-item">
                        <a class="nav-link" href="Index.jsp#About us">About us</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="Index.jsp#Contact us">Contact us</a>
                    </li>          
                </ul>
                <ul class="navbar-nav ml-auto mr-5 mt-2 mt-lg-0">
                    <%
//                        String username = (String) session.getAttribute("session_name");
                        if (username == null) {
                    %>
                    <li class="nav-item">
                        <a class="nav-link" href="login.jsp">Login</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="registration.jsp">Register</a>
                    </li>
                    <% } else {
                    %>
                    <li class="nav-item">
                        <a class="nav-link" href="profile.jsp?uname=${session_name}">Hello ${session_name}</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="logout">Logout</a>
                    </li>
                    <% }%>
                </ul>
            </div>
        </nav>
        <!--End of navbar-->        

        <!--banner div-->
        <div class="container-fluid myhieght">
            <div id="carouselExampleInterval" class="carousel slide" data-ride="carousel">
                <div class="carousel-inner">
                    <div class="carousel-item active" data-interval="10000">
                        <img src="Images/1.jpg" class="d-block w-100" alt="...">
                    </div>
                    <div class="carousel-item" data-interval="20000">
                        <img src="Images/2.jpg" class="d-block w-100" alt="...">
                    </div>
                    <div class="carousel-item">
                        <img src="Images/3.jpg" class="d-block w-100" alt="...">
                    </div>
                </div>
                <a class="carousel-control-prev" href="#carouselExampleInterval" role="button" data-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="carousel-control-next" href="#carouselExampleInterval" role="button" data-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>
        </div>
        <!--End of banner div-->

        <!-- E-larning portal div -->
        <section id="Home">
            <div class="container-fluid banner-img-2 p-5"> 
                <div class="row mb-4">
                    <div class="col text-center">
                        <h1>Achieve your goal with our E-learning Portal</h1>
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        <div class="row">
                            <div class="col-md-3 mb-4">
                                <div class="card">
                                    <div class="card-title mr-auto ml-auto">
                                        <img src="Logo/Free.png" class="header-img img-fluid" alt="free content">
                                    </div>
                                    <div class="card-header text-center">
                                        <h3>Free</h3>
                                    </div>
                                    <div class="card-body">
                                        Lorem ipsum dolor sit, amet consectetur adipisicing elit. Deleniti, iste pariatur! Maiores quas.
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3 mb-4">
                                <div class="card">
                                    <div class="card-title mr-auto ml-auto">
                                        <img src="Logo/Online.png" class="header-img img-fluid" alt="free content">
                                    </div>
                                    <div class="card-header text-center">
                                        <h3>Online</h3>
                                    </div>
                                    <div class="card-body">
                                        Lorem ipsum dolor sit, amet consectetur adipisicing elit. Deleniti, iste pariatur! Maiores quas.
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3 mb-4">
                                <div class="card">
                                    <div class="card-title mr-auto ml-auto">
                                        <img src="Logo/Quiz.png" class="header-img img-fluid" alt="free content">
                                    </div>
                                    <div class="card-header text-center">
                                        <h3>Play Quiz</h3>
                                    </div>
                                    <div class="card-body">
                                        Lorem ipsum dolor sit, amet consectetur adipisicing elit. Deleniti, iste pariatur! Maiores quas.
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3 mb-4">
                                <div class="card">
                                    <div class="card-title mr-auto ml-auto">
                                        <img src="Logo/Certificate.png" class="header-img img-fluid" alt="free content">
                                    </div>
                                    <div class="card-header text-center">
                                        <h3>Certificate</h3>
                                    </div>
                                    <div class="card-body">
                                        Lorem ipsum dolor sit, amet consectetur adipisicing elit. Deleniti, iste pariatur! Maiores quas.
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!--End of  E-larning portal div -->

        <!-- Courses div -->
        <section id="Courses">
            <div class="container-fluid ">
                <div class="row mb-4">
                    <div class="col text-center">
                        <h1>Courses</h1>
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        <div class="row">
                            <div class="col-md-3 mb-4">
                                <div class="card">
                                    <div class="card-title mr-auto ml-auto">
                                        <img src="Logo/html-css.jpg" class="img-fluid" alt="">
                                    </div>
                                    <div class="card-header text-center">
                                        <h3>Html and CSS</h3>
                                    </div>
                                    <div class="card-body">
                                        Lorem ipsum dolor sit amet consectetur adipisicing elit. Veritatis facilis pariatur amet dolore, ipsa sint vero consequuntur error culpa, itaque alias velit rem molestias aspernatur modi odio autem harum odit!
                                    </div>
                                    <div class="card-footer text-center">
                                        <p><a class="btn btn-danger" href="Courses/html-css.jsp" role="button">Explore now »</a></p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3 mb-4">
                                <div class="card">
                                    <div class="card-title mr-auto ml-auto">
                                        <img src="Logo/js.png" class="img-fluid" alt="">
                                    </div>
                                    <div class="card-header text-center">
                                        <h3>JavaScript</h3>
                                    </div>
                                    <div class="card-body">
                                        Lorem ipsum dolor sit amet consectetur adipisicing elit. Veritatis facilis pariatur amet dolore, ipsa sint vero consequuntur error culpa, itaque alias velit rem molestias aspernatur modi odio autem harum odit!
                                    </div>
                                    <div class="card-footer text-center">
                                        <p><a class="btn btn-danger" href="Courses/javascript.jsp" role="button">Explore now »</a></p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3 mb-4">
                                <div class="card">
                                    <div class="card-title mr-auto ml-auto">
                                        <img src="Logo/programming.jpg" class="img-fluid" alt="">
                                    </div>
                                    <div class="card-header text-center">
                                        <h3>Programming</h3>
                                    </div>
                                    <div class="card-body">
                                        Lorem ipsum dolor sit amet consectetur adipisicing elit. Veritatis facilis pariatur amet dolore, ipsa sint vero consequuntur error culpa, itaque alias velit rem molestias aspernatur modi odio autem harum odit!
                                    </div>
                                    <div class="card-footer text-center">
                                        <p><a class="btn btn-danger" href="#" role="button">Explore now »</a></p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3 mb-4">
                                <div class="card">
                                    <div class="card-title mr-auto ml-auto">
                                        <img src="Logo/backend-language.jpg" class="img-fluid" alt="">
                                    </div>
                                    <div class="card-header text-center">
                                        <h3>Server-Side</h3>
                                    </div>
                                    <div class="card-body">
                                        Lorem ipsum dolor sit amet consectetur adipisicing elit. Veritatis facilis pariatur amet dolore, ipsa sint vero consequuntur error culpa, itaque alias velit rem molestias aspernatur modi odio autem harum odit!
                                    </div>
                                    <div class="card-footer text-center">
                                        <p><a class="btn btn-danger" href="#" role="button">Explore now »</a></p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3 mb-4">
                                <div class="card">
                                    <div class="card-title mr-auto ml-auto">
                                        <img src="Logo/ds-algo.jpeg" class="img-fluid" alt="">
                                    </div>
                                    <div class="card-header text-center">
                                        <h3>DS& Algorithm</h3>
                                    </div>
                                    <div class="card-body">
                                        Lorem ipsum dolor sit amet consectetur adipisicing elit. Veritatis facilis pariatur amet dolore, ipsa sint vero consequuntur error culpa, itaque alias velit rem molestias aspernatur modi odio autem harum odit!
                                    </div>
                                    <div class="card-footer text-center">
                                        <p><a class="btn btn-danger" href="#" role="button">Explore now »</a></p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3 mb-4">
                                <div class="card">
                                    <div class="card-title mr-auto ml-auto">
                                        <img src="Logo/Artificial-Intelligence.jpg" class="img-fluid" alt="">
                                    </div>
                                    <div class="card-header text-center">
                                        <h3>Artifical inteligence</h3>
                                    </div>
                                    <div class="card-body">
                                        Lorem ipsum dolor sit amet consectetur adipisicing elit. Veritatis facilis pariatur amet dolore, ipsa sint vero consequuntur error culpa, itaque alias velit rem molestias aspernatur modi odio autem harum odit!
                                    </div>
                                    <div class="card-footer text-center">
                                        <p><a class="btn btn-danger" href="#" role="button">Explore now »</a></p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3 mb-4">
                                <div class="card">
                                    <div class="card-title mr-auto ml-auto">
                                        <img src="Logo/project.jpg" class="img-fluid" alt="">
                                    </div>
                                    <div class="card-header">
                                        <h3>Learn with Projects</h3>
                                    </div>
                                    <div class="card-body">
                                        Lorem ipsum dolor sit amet consectetur adipisicing elit. Veritatis facilis pariatur amet dolore, ipsa sint vero consequuntur error culpa, itaque alias velit rem molestias aspernatur modi odio autem harum odit!
                                    </div>
                                    <div class="card-footer text-center">
                                        <p><a class="btn btn-danger" href="#" role="button">Explore now »</a></p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3 mb-4">
                                <div class="card">
                                    <div class="card-title mr-auto ml-auto">
                                        <img src="Logo/interview.jpg" class="img-fluid" alt="">
                                    </div>
                                    <div class="card-header text-center">
                                        <h3>Prepare for interview</h3>
                                    </div>
                                    <div class="card-body">
                                        Lorem ipsum dolor sit amet consectetur adipisicing elit. Veritatis facilis pariatur amet dolore, ipsa sint vero consequuntur error culpa, itaque alias velit rem molestias aspernatur modi odio autem harum odit!
                                    </div>
                                    <div class="card-footer text-center">
                                        <p><a class="btn btn-danger" href="#" role="button">Explore now »</a></p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!--End of  Courses div -->

        <!-- Join us div -->
        <section>
            <div class="container-fluid">
                <div class="row join-bg">
                    <div class="col-md-6 text-center mt-auto mb-auto">
                        <img src="Logo/join.png" class="img-fluid mb-4 mt-3" style="max-width: 400px;max-height: 250px;" alt="">
                    </div>
                    <div class="col-md-6 mt-auto mb-auto">
                        <h3>Take the next step toward your personal and professional goals with E-learning.</h3>
                        <p>Join now to receive personalized recommendations from the full E-learning catalog.</p>
                        <a href="" class="btn btn-warning p-3  mb-4">Join for free</a>
                    </div>
                </div>
            </div>
        </section>
        <!-- End of Join us div -->

        <!-- About us div -->
        <section id="About us">
            <div class="container-fluid p-5 marketing">
                <h1 class="text-center">About us</h1>
                <br>
                <!-- Three columns of text below the carousel -->
                <div class="row">
                    <div class="col-md-3 text-center">
                        <img src="Logo/programmer.png" class="bd-placeholder-img rounded-circle" width="140" height="140"alt="">
                        <h2>Pratik</h2>
                        <p>Donec sed odio dui. Etiam porta sem malesuada magna mollis euismod. Nullam id dolor id nibh ultricies vehicula ut id elit. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Praesent commodo cursus magna.</p>
                        <p><a class="btn btn-danger" href="#" role="button">View details »</a></p>
                    </div><!-- /.col-lg-4 -->
                    <div class="col-md-3 text-center">
                        <img src="Logo/3.png" class="bd-placeholder-img rounded-circle" width="140" height="140"alt="">
                        <h2>Sanklp</h2>
                        <p>Donec sed odio dui. Etiam porta sem malesuada magna mollis euismod. Nullam id dolor id nibh ultricies vehicula ut id elit. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Praesent commodo cursus magna.</p>            
                        <p><a class="btn btn-danger" href="#" role="button">View details »</a></p>
                    </div><!-- /.col-lg-4 -->
                    <div class="col-md-3 text-center">
                        <img src="Logo/man.png" class="bd-placeholder-img rounded-circle" width="140" height="140"alt="">
                        <h2>Ankit</h2>
                        <p>Donec sed odio dui. Etiam porta sem malesuada magna mollis euismod. Nullam id dolor id nibh ultricies vehicula ut id elit. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Praesent commodo cursus magna.</p>            
                        <p><a class="btn btn-danger" href="#" role="button">View details »</a></p>
                    </div><!-- /.col-lg-4 -->
                    <div class="col-md-3 text-center">
                        <img src="Logo/user.png" class="bd-placeholder-img rounded-circle" width="140" height="140"alt="">
                        <h2>Sushil</h2>
                        <p>Donec sed odio dui. Etiam porta sem malesuada magna mollis euismod. Nullam id dolor id nibh ultricies vehicula ut id elit. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Praesent commodo cursus magna.</p>            
                        <p><a class="btn btn-danger" href="#" role="button">View details »</a></p>
                    </div><!-- /.col-lg-4 -->
                </div><!-- /.row -->


            </div>
        </section>
        <!-- End of About us div -->

        <!-- Contact us div -->
        <section id="Contact us">
            <div class="container-fluid">
                <h1 class="text-center">Contact us</h1>
                <br>
                <div class="row">
                    <div class="col-md-6 mb-2">
                        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d60353.2758430124!2d73.06793212652421!3d19.0162076031786!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3be7c21a619aaff5%3A0xe1360fab56e52d36!2sAPTECH%20COMPUTER%20EDUCATION!5e0!3m2!1sen!2sin!4v1597309595304!5m2!1sen!2sin" width="100%" height="100%" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
                    </div>
                    <div class="col-md-6">
                        <div class="header bg-danger text-center text-white">
                            <p class="p-3 ">Send us a message</p>
                        </div>
                        <div class="body">
                            <form action="contactusData.jsp" method="post" id="form">
                                <div class="row">
                                    <div class="col-md-12">
                                        <label>Full Name*:</label>
                                        <div class="form-group ">
                                            <input class="form-control" type="text" id="fname" name="fname" required autocomplete="off">
                                            <small id="funame"></small>
                                        </div>   
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-12">
                                        <label>Email*:</label>
                                        <div class="form-group ">
                                            <input class="form-control" type="email" id="email" name="email" required autocomplete="off">
                                            <small id="email"></small>
                                        </div>   
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-12">
                                        <label for="comment">Type your message here*:</label>
                                        <div class="form-group ">
                                            <textarea class="form-control" rows="4" id="comment" name="mesg" required autocomplete="off"></textarea>
                                            <small id="mesg"></small>
                                        </div>   
                                    </div>
                                </div>
                                <div class="row justify-content-center">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <button type="submit" value="submit" class="btn btn-dark btn-block" onsubmit="alert('Sussfull');">Send</button>
                                        </div>   
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- End of contact us div -->
        <!-- Contact us div -->

        <section id="Footer">
            <div class="container-fluid bg-danger ">
                <div class="footer p-3 text-center">
                    <h6 >© 2020 E-learning Inc. All rights reserved.</h4>
                </div>
            </div>
        </section>
        <!-- End of contact us div -->
        <script type="text/javascript">
            var preloader = document.getElementById('loading');
            const myLoader = () => {
                preloader.style.display = 'none';
            }
        </script>
        <script type="text/javascript">
            const form = document.getElementById("form");
            form.addEventListener("submit", (event) => {
                swal({
                    title: "Thankyou!",
                    text: "Thankyou for your response!",
                    icon: "success",
                });
            })
        </script>
    </body>
</html>
