


function init(){
    const urlSearchParams = new URLSearchParams(window.location.search);
    const params = Object.fromEntries(urlSearchParams.entries());
    getMovieDetailsById(params['id'])
    
}


function getMovieDetailsById(id){
    
    fetch('../json/Movies.json')
    .then(response => response.json())
    .then(data => {
        movie=data.find(x=>x.MovieId==id)
        document.getElementById("MovieName").innerHTML = movie.MovieName
        document.getElementById("YearOfRelease").innerHTML = movie.YearOfRelease
        document.getElementById("Director").innerHTML = movie.Director
        document.getElementById("Cast").innerHTML = movie.Cast
        document.getElementById("Plot").innerHTML = movie.Plot
        document.getElementById("rating_value").innerHTML = movie.MovieRating

        document.getElementById("Runtime").innerHTML = movie.Runtime + " Hrs"
        document.getElementById("Genre").innerHTML = movie.Genre
        document.getElementById("Language").innerHTML = movie.Language

        document.getElementById("trailer").src = movie.Trailers

        let stars= RenderStars(movie.MovieRating)
        document.getElementById("Ratings").appendChild(stars)

        AddImage("MovieThumbnail",movie.Images)

        getReviews(id)

        getRateByQuality(id)
    })
        




}


function RenderStars(Value){
    let fullstars = parseInt(Value)
    let halfstars = Math.ceil(Value - fullstars)
    let blankstars=5-(fullstars+halfstars)

    let stars = document.createElement('span')

    for(let i=1;i<=fullstars;i++){
        var elem = document.createElement("i");
        elem.classList.add( "bi" );
        elem.classList.add("bi-star-fill");
        elem.classList.add("text-warning");     
        stars.appendChild(elem)
    }
    if (halfstars>0){
        var elem = document.createElement("i");
        elem.classList.add( "bi" );
        elem.classList.add("bi-star-half");
        elem.classList.add("text-warning");
        stars.appendChild(elem)
    }
    if(blankstars>0){
        var elem = document.createElement("i");
        elem.classList.add( "bi" );
        elem.classList.add("bi-star");
        elem.classList.add("text-warning");
        stars.appendChild(elem)
    }

    return stars

}


function AddImage(ElementId,Value){
    if(Value===undefined || Value===""){
        document.getElementById(ElementId).src = "../img/default_image.png"
    } 
    else{
        document.getElementById(ElementId).setAttribute('src',Value)
    }

}

function getReviews(id){
    var ReviewsList = document.getElementById("MovieReviews")

    fetch('../json/MovieReviews.json')
    .then(response => response.json())
    .then(data => {
        reviews=data.filter(x=>x.MovieId==id)
        reviews.forEach(function (r, index) {

            var item = document.createElement('div')
            item.classList.add("accordion-item")


            var header = document.createElement('div')
            header.classList.add("accordion-header")
            header.setAttribute("data-bs-toggle","collapse")
            header.setAttribute("data-bs-target","#accord"+index)
            header.setAttribute("aria-expanded","true")
            header.setAttribute("aria-controls","accord"+index)


            var btn= document.createElement('div')
            header.classList.add("btn")

            btn.innerHTML = r.Username + " : " ;
            
            btn.appendChild(RenderStars(r.UserRating))
            btn.classList.add("text-justify")
            header.appendChild(btn)
           

            // <div id="collapseOne" class="accordion-collapse collapse show" data-bs-parent="#MovieReviews">
            var body = document.createElement('div')
            body.classList.add("accordion-collapse")
            body.classList.add("collapse")
            body.classList.add("show")
            body.setAttribute("data-bs-parent","#MovieReviews")
            body.setAttribute("id","accord"+index)

            // div class="accordion-body">
            var body_text= document.createElement('div')
            body_text.classList.add("accordion-body")
            body_text.classList.add("text-justify")
            body_text.innerHTML =r.UserReview

            body.append(body_text)


            item.appendChild(header)
            item.appendChild(body)
            ReviewsList.appendChild(item)





        });


    })
        
    
}

function getRateByQuality(id){
    fetch('../json/MovieQualityRate.json')
    .then(response => response.json())
    .then(data =>data.filter(x=>x.MovieId==id))
    .then(MovieRates=>{
        let sdIndex = MovieRates.findIndex(x => x.Qauality === "SD");
        let hdIndex = MovieRates.findIndex(x => x.Qauality === "HD");
        let brIndex = MovieRates.findIndex(x => x.Qauality === "Blu-ray");


        
        if(sdIndex<0){
            let card = document.getElementById('SDcard')
            card.remove()
        }
        else{
            document.getElementById("SDrate").innerHTML =   "€"+MovieRates[sdIndex].Rate+" /day"    
        }
        if(hdIndex<0){
            let card = document.getElementById('HDcard')
            card.remove()        
        }
        else{
            document.getElementById("HDrate").innerHTML =  "€"+ MovieRates[hdIndex].Rate +" /day"    
        }
        if(brIndex<0){
            let card = document.getElementById('BRcard')
            card.remove()        
        }
        else{
            document.getElementById("BRrate").innerHTML =   "€"+MovieRates[brIndex].Rate  +" /day"   
        }


        let card_row= document.getElementById('card_row')
        
        cards=Array.from(card_row.childNodes).filter(nodes=>{
            return nodes.nodeName!="#text"
        })
        
        cards.forEach(node=>{
                node.setAttribute("class","col-lg-"+(12/cards.length))        
        })






    })

}


function SubmitForm(){
    alert("Form sumitted!")
}