<%-- 
    Document   : Quiz
    Created on : 26 Aug, 2020, 9:54:45 PM
    Author     : Sushil Gupta
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="../Sessions/UserLoginSession.jsp"%>
<%@include file="../bootstraplinks.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Play Quiz</title>
        <style>.nav-img{
                width:6vh;
            }</style>
        <link rel="stylesheet" href="css/quiz.css">
    </head>
    <body>
        
        <nav class="navbar navbar-expand-sm navbar-dark bg-danger ">
            <!-- Logo of our website -->
            <a class="navbar-brand" href="../Index.jsp"> <img class="nav-img" src="../Logo/elearning.png" alt=""> E-learning</a>

            <button class="navbar-toggler d-lg-none" type="button" data-toggle="collapse" data-target="#collapsibleNavId" aria-controls="collapsibleNavId"
                    aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="collapsibleNavId">
                <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
                    <li class="nav-item active">
                        <a class="nav-link" href="../Index.jsp#Home">Home <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="../Index.jsp#Courses">Courses</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="Quiz.jsp">Take Quiz</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="../Index.jsp#About us">About us</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="../Index.jsp#Contact us">Contact us</a>
                    </li>
                </ul>
                <ul class="navbar-nav ml-auto mr-5 mt-2 mt-lg-0">
                    <li class="nav-item">
                        <a class="nav-link" href="../profile.jsp">Hello ${userlogin}</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="../logout">Logout</a>
                    </li>
                </ul>
            </div>
        </nav>
                    
                    
        <div class="home-box custom-box">
            <h2>Instructions</h2>
            <p>Total number of questions: <span class="total-question">5</span></p>
            <button type="button" class="btn" onclick="startQuiz()">Start Quiz</button>
        </div>

        <div class="quiz-box custom-box hide">
            <div class="question-number">

            </div>
            <div class="question-text">

            </div>
            <div class="option-container">

            </div>

            <div class="next-question-btn">
                <button type="button" class="btn" onclick="next()">Next</button>
            </div>
            <div class="answers-indicator">

            </div>
        </div>
        <div class="result-box custom-box hide">
            <h1>Quiz Result</h1>
            <table>
                <tr>
                    <td>Total Questions</td>
                    <td><span class="total-question"></span></td>
                </tr>
                <tr>
                    <td>Attempt</td>
                    <td><span class="total-attempt"></span></td>
                </tr>
                <tr>
                    <td>Correct</td>
                    <td><span class="total-correct"></span></td>
                </tr>
                <tr>
                    <td>Wrong</td>
                    <td><span class="total-wrong"></span></td>
                </tr>
                <tr>
                    <td>Percentage</td>
                    <td><span class="percentage"></span></td>
                </tr>
                <tr>
                    <td>Your Total Score</td>
                    <td><span class="total-score"></span></td>
                </tr>   
            </table>
            <button type="button" class="btn" onclick="tryAgainQuiz()">Try Again</button>
            <button type="button" class="btn" onclick="goToHome()">Go To Home</button>
        </div>
        <script src="js/app.js"></script>
        <script src="js/question.js"></script>
    </body>
</html>
