require 'bundler'
Bundler.require

require './models/model.rb'
class MyApp < Sinatra::Base

  get '/' do
    erb :index
  end
  get '/results' do
    erb :results
  end
  get '/quiz' do
    erb :quiz
  end
  get '/test' do
    erb :test
  end
  
  post '/results' do
    choice_maker(params)
  end
  
  get '/template' do
    erb :template
  end
  
  get '/quest' do
    erb :quest
  end

end