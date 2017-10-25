#Movies 3: Return of Son of Movies

#A more more advanced version of the Movies Sinatra App

#Summary
#The people at OMDB have complained that our site is making too many requests for Jaws.
#Update your movies app to store OMDB data in your own local database.

#The first time a movie is searched for, your app will put results from OMDB as before.
#But those results will need to be stored locally so that subsequent requests for the
#same title can be served from YOUR database, without bothering the OMDB guys again.

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
     @results_each = "#{@results_each} <a href='/aboutMovie?movie_name=#{movieTitle}'> #{movie["Title"]}</a></br>"
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
