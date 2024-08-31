<%@page import="com.tech.blog.helper.ConnectionProvider"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link href="css/mystyle.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        
        
    </head>

    <body>
        <!--navbar-->
        <%@include file="normal_navbar.jsp" %>

        <!banner-->
    <div class="container-fluid p-0 m-0">
        <div class="jumbotron primary-background-color text-white">
            <div class="container">
                <h3 class="display-3">Welcome to TechBlog 24:7</h3>

                <p>Welcome to Technical Blog, The World Of Technology</p>
                <p>Programming languages are described in terms of their syntax (form) and semantics (meaning), usually defined by a formal language. Languages usually provide features such as a type system, variables, and mechanisms for error handling. An implementation of a programming language is required in order to execute programs, namely an interpreter or a compiler. An interpreter directly executes the source code, while a compiler produces an executable program.<p/>

                <button class="btn btn-outline-light btn-lg"> <span class="fa fa-user-plus"></span> Start ! its Free</button>
                <a href="login_page.jsp" class="btn btn-outline-light btn-lg"> <span class="fa fa-user-circle  "></span> Login</a>

            </div>
        </div>

    </div>

    <div class="container">
        <div class="row mb-2">
            <div class="col-md-4"> 
                <div class="card" ">

                    <div class="card-body">
                        <h5 class="card-title">Java Programming</h5>
                        <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                        <a href="#" class="btn primary-background-color text-white ">Read More</a>
                    </div>
                </div>
            </div>
            
            <div class="col-md-4"> 
                <div class="card" ">

                    <div class="card-body">
                        <h5 class="card-title">Google Cloud</h5>
                        <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                        <a href="#" class="btn primary-background-color text-white ">Read More</a>
                    </div>
                </div>
            </div>
            
            <div class="col-md-4"> 
                <div class="card" ">

                    <div class="card-body">
                        <h5 class="card-title">SpringBoot</h5>
                        <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                        <a href="#" class="btn primary-background-color text-white ">Read More</a>
                    </div>
                </div>
            </div>
        </div>
                
        <div class="row">
            <div class="col-md-4"> 
                <div class="card" ">

                    <div class="card-body">
                        <h5 class="card-title">GitHub Tools</h5>
                        <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                        <a href="#" class="btn primary-background-color text-white ">Read More</a>
                    </div>
                </div>
            </div>
            
            <div class="col-md-4"> 
                <div class="card" ">

                    <div class="card-body">
                        <h5 class="card-title">C++ Programming</h5>
                        <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                        <a href="#" class="btn primary-background-color text-white ">Read More</a>
                    </div>
                </div>
            </div>
            
            <div class="col-md-4"> 
                <div class="card" ">

                    <div class="card-body">
                        <h5 class="card-title">MERN STACK</h5>
                        <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                        <a href="#" class="btn primary-background-color text-white ">Read More</a>
                    </div>
                </div>
            </div>
        </div>
        
        <br>
        
        <div class="row">
            <div class="col-md-4"> 
                <div class="card" ">

                    <div class="card-body">
                        <h5 class="card-title">Backend Development</h5>
                        <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                        <a href="#" class="btn primary-background-color text-white ">Read More</a>
                    </div>
                </div>
            </div>
            
            <div class="col-md-4"> 
                <div class="card" ">

                    <div class="card-body">
                        <h5 class="card-title">MySQL DataBase</h5>
                        <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                        <a href="#" class="btn primary-background-color text-white ">Read More</a>
                    </div>
                </div>
            </div>
            
            <div class="col-md-4"> 
                <div class="card" ">

                    <div class="card-body">
                        <h5 class="card-title">Digital Marketing</h5>
                        <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                        <a href="#" class="btn primary-background-color text-white ">Read More</a>
                    </div>
                </div>
            </div>
        </div>
    </div>

   
          <!--javascripts-->
        <script
            src="https://code.jquery.com/jquery-3.4.1.min.js"
            integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo="
        crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        <script src="js/myjs.js" type="text/javascript"></script>

    
    
</body>
</html>
