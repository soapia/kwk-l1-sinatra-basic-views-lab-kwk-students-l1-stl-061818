require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :index
  end
  get '/tips'do
    erb :tips
  end
  get '/quiz'do
    erb :fullquiz
  end
  get '/q2'do
    erb:q2
  end
   get '/q3'do
    erb:q3
  end
   get '/q4'do
    erb:q4
  end
  get '/q5'do
    erb:q5
  end
  get '/quizresults'do
    erb:quizresults
  end
  get '/start'do
    erb :start
  end
  get '/results' do
    erb:results
  end
  
  
end
