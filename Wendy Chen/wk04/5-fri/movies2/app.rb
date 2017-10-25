#Movies_2

#A more advanced version of the Movies Sinatra App
#Summary
#The students will update their movies app to allow users to search the database of movies.

#Specification
#Instead of returning a single title, the OMDb API allows you t do a search which will return multiple titles.

#For example if you search on Jaws, you will get a list like the following:
#Jaws
#Jaws 2
#Jaws 3-D
#Jaws Special
#Jaws Wired Shut

#Update your app to allow users to enter a search for movies, and to show the list as a set of links. Users should then be able to click on the link and go to the movie-etails page (like in your existing app).

#Extra credit:
#Consider updating the search functionality so that if you just get one movie back - you don't show the list but take the user straight to the page that shows the information (fewer clicks makes for better user experience).

#Extra extra credit:
#Everytime a user does a search save the movie searched into a file called search_history.txt
#add an extra path '/history' that list out all search history

require 'sinatra'
require 'sinatra/reloader'
require 'pry'
require 'httparty' # allows you to go to other websites and pull data down from their server

 get '/' do
   erb :layout #calling the index file in the views folder by default
 end

 get '/movieList' do
   @movieName = "#{params[:movie_name]}*"
   results = HTTParty.get("http://omdbapi.com/?s=#{@movieName}&apikey=2f6435d9")

   results["Search"].each do |movie|
     movieTitle = movie["Title"].gsub("'", '%27')
     @results_each = "#{@results_each} <a href='/aboutMovie?movie_name=#{movieTitle}'> #{movie["Title"]}</a></br> "
   end

   erb :layout
 end

 get '/aboutMovie' do
   #binding.pry #debugg . to find the values of the parameters, type "params" at the console log
   @movieName = params[:movie_name]
   results = HTTParty.get("http://omdbapi.com/?t=#{@movieName}&apikey=2f6435d9")

   @title = "Movie title: #{results["Title"]} Year: #{results["Year"]} Rated: #{results["Rated"]} Released: #{results["Released"]} Runtime: #{results["Runtime"]}"
   @genre = "Genre: #{results["Genre"]} Director: #{results["Director"]}"
   @writer ="Writer: #{results["Writer"]} Language: #{results["Language"]}"
   @poster = results["Poster"]
   @ratings = results["Ratings"]

   for i in 1..@ratings.length
     i = i.to_i - 1
     @ratings_each = "#{@ratings_each} #{@ratings[i]["Source"]} #{@ratings[i]["Value"]} </br> "
   end
    @ratings_each = "Ratings: </br> #{@ratings_each}"

   erb :layout
 end
