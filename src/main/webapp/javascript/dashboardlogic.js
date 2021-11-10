

function initialize() {
  loadMovieStuff();
  newReleases();
}


function loadMovieStuff() {
  console.log("loadMovieStuff")
  //Read json
  fetch('../json/Movies.json')
    .then(response => response.json())
    .then(data => {
      
      var ulTagListOfMovies = document.getElementById("ulTagListOfMovies");
      //loop through json and set it to page
      for (var i = 0; i < data.length; i++) {
        var liData = `<li>
      <div class="row">
        <div class="card card-body col-lg-2">
          <div class="carousel-item active">
            <a href="../view/movie.jsp?id=${data[i].MovieId}">
              <img src='${data[i].Images}' class="d-block w-100" alt="../img/p1.jpg">
            </a>
          </div>
        </div>
        <div class="card card-body col-lg-10" id="movie-text-data">
          <h3 class="mname">${data[i].MovieName}</h3>
          <p id="movie-mini-discription">${data[i].Plot}</p>
          <p id="available-stock">Available Stock : ${data[i].AvailableStock}</p>
          <p id="upload-date">${data[i].UploadDate}</p>
        </div>
      </div>
    </li>`
        ulTagListOfMovies.innerHTML = ulTagListOfMovies.innerHTML + liData
      }
    })
}





function newReleases() {

  fetch('../json/NewReleases.json')
    .then(response => response.json())
    .then(data => {

      var newMovieReleases = document.getElementById("carousel_newRelease");
      var headerholder = `<div class="card card-body">
                              <h3>New Releases</h3> `


      var sumbuttonMovieSlider = `<div class="carousel-indicators" id = "buttonMovieSlider">`;
      var sumnewReleasesList = `<div id="newReleasesList" class="carousel-inner">`;

      //loop through new Relases
      for (var i = 0; i < data.length; i++) {

        if(i == 0){
           var buttonMovieSlider = `<button type="button" data-bs-target="#carousel_newRelease"
           data-bs-slide-to='${i}' class="active" aria-current="true" aria-label="Slide ${i}"></button> `
    
           var newReleasesList = `<div class="carousel-item active">
           <a href="../view/movie.jsp?id=${data[i].MovieId}">
            <img src="${data[i].MovieImgURL}" class="d-block w-100" alt="...">
          </a>
          </div> `

        }else { 
        
          var buttonMovieSlider = ` 
          <button type="button" data-bs-target="#carousel_newRelease"
           data-bs-slide-to="${i}" aria-label="Slide ${i}">
          </button> `
    
          var newReleasesList = `<div class="carousel-item">
            <a href="../view/movie.jsp?id=${data[i].MovieId}">
              <img src="${data[i].MovieImgURL}" class="d-block w-100" alt="...">
            </a>
            </div> `
        }


        sumbuttonMovieSlider = sumbuttonMovieSlider + buttonMovieSlider
        sumnewReleasesList = sumnewReleasesList + newReleasesList
      }

      var movieSliderForzenBase = `</div>
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
    </div>`

      //Setting elements value of all looped iteams to one Div
      newMovieReleases.innerHTML = headerholder + sumbuttonMovieSlider + '</div>' + sumnewReleasesList + movieSliderForzenBase+ '</div>';
    })
}



// filter books
const docforms = document.forms;
const searchMovies = docforms['search-movies'].querySelector('input');
searchMovies.addEventListener('keyup', (e) => {
  const term = e.target.value.toLowerCase();
  const mnames = document.querySelector('#idMovieListHolder ul').getElementsByTagName('li');

  for (var i = 0; i < mnames.length; i++) {
    const mname = mnames[i].getElementsByClassName("mname")[0].innerHTML;
    if ((mname.toLowerCase().indexOf(e.target.value.toLowerCase())) != -1) {
      mnames[i].style.display = 'block'; //show
    } else {
      mnames[i].style.display = 'none'; // remove
    }
  }
});




