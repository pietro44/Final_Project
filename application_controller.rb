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
    @to_return = choice_maker(params)
    erb :results
  end
  
  get '/template' do
    erb :template
  end

end