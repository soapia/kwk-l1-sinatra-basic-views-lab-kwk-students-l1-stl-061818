require 'bundler'
Bundler.require
require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
  	set :views, "views"
  end  
  
  get '/' do
    erb :index
  end  
  
post '/results' do
  sports = 0 
  outdoors = 0
  mind = 0 
  performing = 0
  arts = 0
end 

if params[:location]=="a"
        outdoors += 1
        sports += 1 
elsif params[:location]=="b"
        mind +=1 
        performing += 1
        arts += 1
        sports += 1 
elsif params[:location]== "c"
        sports += 1
        outdoors += 1
        mind += 1 
        performing += 1
        arts += 1
end

if params[:hands] == "a"
        arts += 1
elsif params[:hands] == "b"
        sports += 1
        outdoors += 1
        mind += 1 
        performing += 1
end 

if params[:active] == "a"
       outdoors += 1
       sports += 1 
elsif params[:active] == "b" 
       mind += 1 
       performing += 1
       arts += 1
end 

if params[:work] == "a"
       sports += 1
       outdoors += 1
       mind += 1
       arts += 1
elsif params[:work] == "b"
       performing += 1
       sports += 1
       outdoors += 1
end 

if params[:outgoing]== "a"
       performing += 1
       sports += 1
       outdoors += 1
elsif params[:outgoing] == "b"
       sports += 1
       outdoors += 1
       mind += 1
       arts += 1
     end 
if sports>performing && sports>outdoors && sports>arts && sports>mind
  puts "You should try some indoor sports! It'll benefit you physically. Check out the Indoor Sports section for some suggestions. "
elsif mind>performing && mind>outdoors && mind>arts && mind>sports
  puts "You should try something challenging to the mind. Please look in the ming challenge section."
elsif arts>performing && arts>outdoors && arts>mind && arts>sports
puts "You should try something art related! You are creative and your creativity can help with your projects. Please look at the art category to see what some options are!"
elsif performing>arts && performing>outdoors && performing>mind && performing>sport
puts "You should try performing arts. It'll give you a good challenge."
elsif outdoors>arts && outdoors>mind && outdoors>sports && outdoors>performing
puts "You should try something adventurous. You shoud look in the outdoor section."
elsif performing>=arts
  puts "You should try performing arts or anything art related. Please check both categories."
elsif performing>=mind 
puts "You should try performing arts or anything mind related. Please check both categories."
elsif performing>=outdoors
puts "You should try performing arts or anything outdoor related. Please check both categories."
elsif performing>=sports
puts "You should try performing arts or anything sports related. Please check both categories."
elsif arts>=sports
puts "You should try art or anything sports related.Please check both categories."
elsif arts>=mind
puts "You should try art or anything mind related.Please check both categories."
elsif arts>=outdoors
puts "You should try art or anything outdoors related.Please check both categories."
elsif mind>=sports
puts "You should try mind or anything sports related.Please check both categories."
elsif mind>=outdoors 
puts "You should try mind or anything outdoors related.Please check both categories."
elsif outdoors>=sports
puts "You should try anything outdoors or sports related. Please check both catergories."
end 
end
