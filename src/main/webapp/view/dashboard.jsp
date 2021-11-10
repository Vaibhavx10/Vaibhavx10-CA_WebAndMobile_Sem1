<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html lang="en">

<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <!-- Bootstrap CSS -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
  <link type="text/css" href="../css/dashboardstyle.css" rel="stylesheet" />
  
  <title>Hello, world!</title>
</head>

<body onload="initialize()">


  <!-- <div class="container">
      <div class="row">
        <div class="col">
          1 of 2
        </div>
        <div class="col">
          2 of 2
        </div>
      </div>
      <div class="row">
        <div class="col">
          1 of 3
        </div>
        <div class="col">
          2 of 3
        </div>
        <div class="col">
          3 of 3
        </div>
      </div>
    </div> -->




  <div class="container my-5">
    <div class="row">
      <div class="card card-body col-sm-4 col-lg-3">
        <div class="p-5 bg-primary text-light">col 1 </div>
      </div>
      <div class="card card-body col-sm-4 col-lg-6">
        <div class="p-5 bg-primary text-light">col 2 </div>
      </div>
      <div class="card card-body col-sm-4 col-lg-3">
        <div class="p-5 bg-primary text-light">col 3 </div>
      </div>
    </div>
  </div>

  <div class="container my-5">
    <div class="row">
      <div class="card card-body col-sm-4 col-lg-4">
        <div class="p-5 bg-primary text-light">Alpha </div>
      </div>
      <div class="card card-body col-sm-4 col-lg-4">
        <div class="p-5 bg-primary text-light">Gama </div>
      </div>
      <div class="card card-body col-sm-4 col-lg-4">
        <div class="p-5 bg-primary text-light">Beta </div>
      </div>
    </div>
  </div>

  <!-- Slider patch Start  -->
  <div class="container my-5">
    <div class="row justify-content-center">

      <!-- Rented movie list Start -->
      <div id="carousel_rentedMovies" class="carousel slide col-sm-4 col-lg-3" data-bs-ride="carousel">
        <!-- To give a thin line around the div -->
        <div class="card card-body">
          <h3>Rented movie list</h3>
          <div class="carousel-indicators">
            <button type="button" data-bs-target="#carousel" data-bs-slide-to="0" class="active"
              aria-current="true" aria-label="Slide 1"></button>
            <button type="button" data-bs-target="#carousel" data-bs-slide-to="1"
              aria-label="Slide 2"></button>
            <button type="button" data-bs-target="#carousel" data-bs-slide-to="2"
              aria-label="Slide 3"></button>
          </div>
          <div class="carousel-inner">
            <div class="carousel-item active">
              <img
                src="../img/p1.jpg"
                class="d-block w-100" alt="...">
            </div>
            <div class="carousel-item">
              <img
                src="../img/p2.jpg"
                class="d-block w-100" alt="...">
            </div>
            <div class="carousel-item">
              <img
                src="../img/p3.jpg"
                class="d-block w-100" alt="...">
            </div>
          </div>
          <button class="carousel-control-prev" type="button" data-bs-target="#carousel"
            data-bs-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Previous</span>
          </button>
          <button class="carousel-control-next" type="button" data-bs-target="#carousel"
            data-bs-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Next</span>
          </button>
        </div>
      </div>
      <!-- Rented movie list End -->






      <!-- Recently Watched Trailers Start -->
      <div id="carousel_recentlyWatched" class="carousel slide col-sm-4 col-lg-3"
        data-bs-ride="carousel">
        <div class="card card-body">
          <h3>Recently Watched </h3>
          <div class="carousel-indicators">
            <button type="button" data-bs-target="#carousel_recentlyWatched" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
            <button type="button" data-bs-target="#carousel_recentlyWatched" data-bs-slide-to="1" aria-label="Slide 2"></button>
            <button type="button" data-bs-target="#carousel_recentlyWatched" data-bs-slide-to="2" aria-label="Slide 3"></button>
          </div>
          <div class="carousel-inner">
            <div class="carousel-item active">
              <img
                src="../img/p1.jpg"
                class="d-block w-100" alt="...">
            </div>
            <div class="carousel-item">
              <img
                src="../img/p2.jpg"
                class="d-block w-100" alt="...">
            </div>
            <div class="carousel-item">
              <img
                src="../img/p3.jpg"
                class="d-block w-100" alt="...">
            </div>
          </div>
          <button class="carousel-control-prev" type="button"
            data-bs-target="#carousel_recentlyWatched" data-bs-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Previous</span>
          </button>
          <button class="carousel-control-next" type="button"
            data-bs-target="#carousel_recentlyWatched" data-bs-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Next</span>
          </button>
        </div>
      </div>
      <!-- Recently Watched Trailers End -->



      <!-- New Releases Start -->
      <div id="carousel_newRelease" class="carousel slide col-sm-4 col-lg-3" data-bs-ride="carousel">
        <!-- should be deleted later -->
        <!-- <div class="card card-body">
          <h3>New Releases</h3>
          <div class="carousel-indicators">
            <button type="button" data-bs-target="#carousel_newRelease" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
            <button type="button" data-bs-target="#carousel_newRelease" data-bs-slide-to="1" aria-label="Slide 2"></button>
            <button type="button" data-bs-target="#carousel_newRelease" data-bs-slide-to="2" aria-label="Slide 3"></button>
          </div>
          <div id="newReleasesList" class="carousel-inner">
            <div class="carousel-item active">
                <img src="../img/p1.jpg" class="d-block w-100" alt="...">
              </div>
            <div class="carousel-item">
              <li>
              <img src="../img/p2.jpg" class="d-block w-100" alt="...">
              </li>
            </div>
            <div class="carousel-item">
              <li>
              <img src="../img/p3.jpg" class="d-block w-100" alt="...">
              </li>
            </div>
          </div>
          <button class="carousel-control-prev" type="button" data-bs-target="#carousel_newRelease"
            data-bs-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Previous</span>
          </button>
          <button class="carousel-control-next" type="button" data-bs-target="#carousel_newRelease"
            data-bs-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Next</span>
          </button>
        </div> -->
      </div>
      <!-- New Releases End -->

    </div>
  </div>
  <!-- Slider patch End  -->



  <!-- Adding a search integrated list of movies to scroll through Start   -->
  <div class="container" id="idMovieListHolder">
    <div class="row">
      <div class="movieListHolder" >

        <header>
          <div id="movietitle">
            <h1 class="title">List of Movies</h1>
            <form id="search-movies">
              <input type="text" placeholder="Search Movies..." />
            </form>
          </div>
        </header>
      </div>
    </div>



    <ul id="ulTagListOfMovies">
      <!-- Just for Refrence should be deleted later  -->
      <!-- <li>
        <div class="row">
          <div class="card card-body col-lg-2">
            <div class="carousel-item active">
              <a href="#">
                <img
                  src="../img/p1.jpg"
                  class="d-block w-100" alt="...">
              </a>
            </div>
          </div>
          <div class="card card-body col-lg-10" id="movie-text-data">
            <h3 class="mname">Name of Movie</h3>
            <p id="movie-mini-discription">
              Lorem ipsum dolor sit amet consectetur adipisicing elit. Provident! Lorem ipsum dolor sit amet consectetur
              adipisicing elit. Quae veniam officia optio aliquam cum ducimus ad minima quisquam rem. Fugiat impedit
              veniam
              omnis libero commodi, itaque molestias magni. Non, repudiandae.
            </p>
            <p id="available-stock">
              Rented : 15
            </p>
            <p id="upload-date">
              upload date 2 June 2021
            </p>
          </div>

        </div>
      </li> -->
  </ul>


  </div>







  <!-- Adding a search integrated list of movies to scroll through End   -->






  </div>




















  <!-- Optional JavaScript; choose one of the two! -->

  <!-- Option 1: Bootstrap Bundle with Popper -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
    crossorigin="anonymous"></script>

  <script src="../javascript/dashboardlogic.js"></script>
  
</body>

</html>