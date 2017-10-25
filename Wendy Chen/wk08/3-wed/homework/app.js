// Ajax Movies
//
// movies fetching using javascript
// this is a client side javascript app, no server side code needed
// Summary
//
// The students will create a new movies app to allow users to search the database of movies.
//
// Specification
//
// Instead of returning a single title, the OMDb API allows you t do a search which will return multiple titles.
//
// For example if you search on Jaws, you will get a list like the following:
//
// Jaws
// Jaws 2
// Jaws 3-D
// Jaws Special
// Jaws Wired Shut
// write a frontend app to allow users to enter a search for movies, and to show the list of title within h2 tags without page refresh.
//
// index.html
// app.js
// style.css
// Extension
//
// turn each h2 titles into a link that goes to the corresponding IMDB movie page that opens in a new window

var searchMovie

$(document).ready(function(){
    $("form").submit(function(e){ // search and display movies
      searchMovie = $("#movieInput").val();
      $.ajax({
        method: "GET",
        //url:"http://omdbapi.com/?t=jaws&apikey=2f6435d9",
        url:"http://omdbapi.com/",
        data: { s: searchMovie, apikey: "2f6435d9" }
      }).done(function( results ) {
          var noOfResults = results["Search"].length;
            $(".listMovie").append("<h2>Results:</h2>");
            for (i = 0; i < noOfResults; i++){
              var SearchResult_title = results["Search"][i]["Title"];
              var SearchResult_id = results["Search"][i]["id"];
              $(".listMovie").append("<p id='"+SearchResult_id+"'>"+SearchResult_title+"</p>");
            }
        });
       e.preventDefault();
    });
});
