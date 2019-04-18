<%--
  Created by IntelliJ IDEA.
  User: Evan
  Date: 3/04/2019
  Time: 5:36 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>TBD MOVIE STORE</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Online Movie Store</title>
    <link rel="stylesheet" href="isd1.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
  </head>

  <body>
  <!--TOP NAVIGATION BAR-->
  <nav class="navbar navbar-expand-lg navbar-light bg-light">

    <a class="navbar-brand" href="#">TBD Movie Store</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>


    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav mr-auto">
        <!--HOME,MOVIES,ABOUT-->
        <div class="container-fluid">
          <div class="row">
            <div class="float-right">
              <li class="nav-item">
                <a class="nav-link" href="index.jsp">HOME</a>
              </li>
            </div>
            <div class="col-auto">
              <li class="nav-item">
                <a class="nav-link" href="movies.jsp">MOVIES</a>
              </li>
            </div>
            <div class="col-auto">
              <li class="nav-item">
                <a class="nav-link" href="about.jsp">ABOUT</a>
              </li>
            </div>
          </div>
        </div>

        <!--LOGIN, SIGNUP-->
        <div class="col-auto">
          <li class="nav-item">
            <a class="nav-link" href="login.jsp">LOGIN</a>
          </li>
        </div>
        <div class="col-auto">
          <li class="nav-item">
            <a class="nav-link" href="#">SIGN UP</a>
          </li>
        </div>

    </ul>
    </div>
  </nav>



  <!----div class="jumbotron" style="background-image: url(https://occ-0-1986-2567.1.nflxso.net/dnm/api/v6/0DW6CdE4gYtYx8iy3aj8gs9WtXE/AAAABTaWaHupVf-C0ISb796bINGtA1g-VMSSYepbPRG0tqHDY94YP6bJEFs1BACRVA263aJnYNPPDF3K-_Qey2CSx69pfA2l0C6B.webp?r=2b7); background-size: 100%;">
      <div class="container for-about">
      <h1>About</h1>
      </div>
   </div>-->

  <!---NEW MOVIE BANNER-->
  <!-- Not sure if jumbotron is needed? -->
  <div class="jumbotron">
    <h1 class="display-4">HELLBOY</h1>
    <p class="lead">This is a simple hero unit, a simple jumbotron-style component for calling extra attention to featured content or information.</p>
    <hr class="my-4">
    <p>Hellboy is a 2019 American supernatural superhero film based on the Dark Horse Comics character of the same name. Directed by Neil Marshall, the film stars David Harbour in the title role, alongside Milla Jovovich, Ian McShane, Sasha Lane, Daniel Dae Kim, and Thomas Haden Church.</p>
    <p class="lead">
      <a class="btn btn-primary btn-lg" href="#" role="button">Learn more</a>
    </p>
  </div>


  <!----<div class="nav">-->
  <!----<ul>
      <li><a id = "logo" href ="index.html"><img src = "logo2.png" alt = "logo"></a></li>
      <li><a class = "active" href = "index.html">Home</a></li>
      <li><a href = "movies.html">Movies</a></li>
      <li><a href = "about.html">About</a></li>

      <li><a href = "login.html">Login</a></li>
      <li><a href = "signUp.html">Sign Up</a></li>


   </ul>
  </div>-->
  </body>


</html>
