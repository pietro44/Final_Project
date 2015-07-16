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
  get '/test' do
    erb :test
  end
  get '/gotosleep' do
    @name = ["Pietro", "Bob", "Joe", "Greg", "Aatish", "Gidon", "Hal", "Alex"]
    erb :sleep
  end
  get '/doge' do
    @doge1 = Doge.new("Sparkles")
    erb :results
end
  
end