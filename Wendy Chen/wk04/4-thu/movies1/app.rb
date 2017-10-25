#Movies I

#Specification

#Build a search form that lets the user enter a movie name.
#The Sinatra app will use HTTParty to fetch the data for the
#chosen movie from OMDB and display it on the page.

#Build a Sinatra application
#Include:
#app.rb
#views/layout.erb
#views/index.erb
#views/about.erb
#public/css/style.css
#example httparty usage

#require 'httparty'
#result = HTTParty.get('http://omdbapi.com/?t=once&apikey=insert_key')
#http://omdbapi.com/?t=Jaws&apikey=2f6435d9

#Additional Resources
#Dynamic URLs in Sinatra (http://blog.teamtreehouse.com/ruby-sinatra-dynamic-urls-tutorial)
#Open movie database API (http://www.omdbapi.com/)

require 'sinatra'
require 'sinatra/reloader'
require 'pry'
require 'httparty' # allows you to go to other websites and pull data down from their server

 get '/' do
   erb :layout #calling the index file in the views folder by default
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
     @ratings_each = "#{@ratings_each} #{@ratings[i]["Source"]} #{@ratings[i]["Value"]} \n "
   end

   erb :layout
 end
