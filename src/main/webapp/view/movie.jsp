    <html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Movie Rental</title>

        <!--#region bootstrap & CSS CDN-->

        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <link rel="stylesheet" href="../css/stylesheet.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.0/font/bootstrap-icons.css">


        <!--#regionend bootstrap & CSS CDN-->

    </head>
    <body onload="init()">
    
        

        <!--#region Movie Section -->
        <section id="movie">
            <div class="container-lg my-5">
                <div class="row container-box">
                    <div class=""></div>
                    <div class="col-lg-4 col-md-4">
                        <div class="Primary text-dark text-center">
                            <img id="MovieThumbnail" class="img-fluid Movie_Cover" src="">
                        </div>
                    </div> 
                    <div class="col-lg-8 col-md-8">
                        <div id="MovieDetails" class="p-lg-5 Secondary text-left">
                            <div class="container-lg">
                                <div class="row">
                                    <div class="col-lg-8 col-md-8 col-sm-6">
                                        <table class="table-style">
                                            <tr>
                                            <td colspan="3" class="h3 text-dark"><span id="MovieName">Movie Name</span></td> 
                                            </tr>
                                            <tr>
                                                <td>Runtime</td>
                                                <td>:</td>
                                                <td><span id="Runtime">{{Runtime}}</span></td>
                                            </tr>
                                            <tr>
                                                <td>Genre</td>
                                                <td>:</td>
                                                <td><span id="Genre">{{Genre}}</span></td>
                                            </tr>
                                            <tr>
                                                <td>Language</td>
                                                <td>:</td>
                                                <td><span id="Language">{{Language}}</span></td>
                                            </tr>

                                            <tr>
                                                <td>Year of Release</td>
                                                <td>:</td>
                                                <td><span id="YearOfRelease">{{Year of Release}}</span></td>
                                            </tr>
                                            <tr>
                                                <td>Director</td>
                                                <td>:</td>
                                                <td><span id="Director">{{Director}}</span></td>
                                            </tr>
                                            <tr>
                                                <td>Cast</td>
                                                <td>:</td>
                                                <td><span id="Cast">{{Cast}}</span></td>
                                            </tr>
                                            <tr>
                                                <td>Plot</td>
                                                <td>:</td>
                                                <td><span id="Plot">{{Plot}}</span></td>
                                            </tr>
                                        </table>
                                    </div>
                                    <div class="col-lg-4 col-md-4 col-sm-6">
                                        <div class="p-3 text-center" id="Ratings">
                                            <div class="h6 text-dark">Rating</div>
                                            <div class="display-1" id="rating_value"></div>
                                        </div>
                                        <div class="my-5 py=2 text-center" style="text-align: left;">
                                           <a href="#card_row" class="btn btn-outline-secondary btn-md my-1">Rent Now</a>
                                        </div>
                                    </div>
                                </div>
                            </div>                        
                        </div>
                    </div> 
                      
                </div>
                <div class="row container-box">
                    <div class="container-lg my-5 py-5">
                        <div class="row">
                            <div class="col">
                                <div class="h4">Trailer</div>
                                <div class="videoframe">
                                    <iframe id="trailer" width="720" height="1024"  frameborder="0" allow="picture-in-picture;encrypted-media;" allowfullscreen></iframe>
                                </div>
                            </div>
                            <div class="col">
                                <div class="h4">User Reviews</div>
                                    <div class="accordion accordion_style" id=MovieReviews>

                                    </div>
                            </div>
                        </div>
                    </div>

                </div>

                <div class="row container-box Secondary">
                    <div class="container-lg">
                        <div class="row text-center" id="card_row">
                        <div class="col-lg-4" id="SDcard">
                            <div class="card border-light border-1" >
                                <div class="card-body text-center">
                                    <img src="../img/SD.png" height="200" width="200" >
                                <div class="display-6 text-muted" id="SDrate">
                                        {{SDrate}}
                                </div>
                                <a class="btn btn-outline-secondary btn-lg my-2" data-bs-target="#Reserve-modal" data-bs-toggle="modal" onclick="SelectMovie('SD')">Rent</a> 
                            </div>
                            </div>
                        </div>
                        <div class="col-lg-4" id="HDcard">
                            <div class="card border-light border-1">
                                <div class="card-body text-center">
                                    <img src="../img/HD.png" height="200" width="200" >
                                <div class="display-6 text-muted" id="HDrate">
                                        {{HDrate}}}
                                </div>
                                <a class="btn btn-outline-secondary btn-lg my-2" data-bs-target="#Reserve-modal" data-bs-toggle="modal" onclick="SelectMovie('HD')">Rent</a> 
                            </div>
                            </div>
                        </div>
                        <div class="col-lg-4"  id="BRcard">
                            <div class="card border-light border-1">
                                <div class="card-body text-center">
                                    <img src="../img/Bluray.png" height="200" width="200" >
                                <div class="display-6 text-muted" id="BRrate">
                                        {{BRrate}}
                                </div>
                                <a class="btn btn-outline-secondary btn-lg my-2" data-bs-target="#Reserve-modal" data-bs-toggle="modal" onclick="SelectMovie('BR')">Rent</a> 
                            </div>
                            </div>
                        </div>
                    </div>
                    </div>

                </div>
            </div>
        </section>
         <!--#regionend Movie Section -->




        <!--#region Reseravtion Form-->

        <section id="Reserve">
            <div class="modal" id="Reserve-modal" tabindex="-1"  aria-hidden="true">
                <div class="modal-dialog modal-dialog-scrollable modal-dialog-centered ">
                    <div class="modal-content">

                        
                        
                        <div class="modal-header">
                            <h4 class="modal-title">Modal title</h4>
                            <a  class="btn-close" data-bs-dismiss="modal" aria-label="Close"></a>
                          </div>
                          <form name="ReseravtionForm" id="reseravtion-form">
                          <div class="modal-body">
                           
                            <div class="mb-2">
                                <label for="MovieSelected" class="form-label">Movie Name</label>
                                <input  class="form-control" id="MovieSelected" type="text" disabled>

                                <label for="QualitySelected" class="form-label">Disc Type</label>
                                <input  class="form-control" id="QualitySelected" type="text" disabled>

                                <label for="Name" class="form-label">Name</label>
                                <input  class="form-control" id="Name" type="text" required placeholder="Enter your Name (Ex: John Wick)">

                                <label for="EmailId" class="form-label">Email address</label>
                                <input  class="form-control" id="EmailId" type="email" oninput="Validate(form)" placeholder="Enter your Email (Ex: john.wick@mail.com)">

                                <label for="Phone" class="form-label">Phone No</label>
                                <input id="Phone" class="form-control" type="tel" name="Phone" oninput="Validate(form)" placeholder="Enter your Phone No. (Ex: 0899XXXXXXX)">


                              </div>


                          </div>
                          </form>
                          <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                            <button id="btn-submit"   class="btn btn-dark" onclick="SubmitForm()">Save changes</button>
                          </div>
                      
                       


                    </div>
                </div>

            </div>
        </section>


        <!--#regionend Reseravtion Form-->



        <!--#region Scripts-->

        <script src="../javascript/movie.js"></script>

        
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>
    

        <!--#regionend Scripts -->
    </html>