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

#Additional Resources
#Dynamic URLs in Sinatra (http://blog.teamtreehouse.com/ruby-sinatra-dynamic-urls-tutorial)
#Open movie database API (http://www.omdbapi.com/)

require 'sinatra'
require 'sinatra/reloader'
require 'pry'
require 'httparty' # allows you to go to other websites and pull data down from their server

 get '/' do
   erb (:index) #calling the index file in the views folder by default
 end

 get '/about' do
   #binding.pry #debugg . to find the values of the parameters, type "params" at the console log
   @num1 = params[:num1].to_i
   @num2 = params[:num2].to_i
   @num3 = @num1 + @num2
   erb :answer
 end
