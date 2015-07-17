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
    amsterdam = Place.new("Amsterdam", "city", "europe", "temperate", "not_too_expensive","no")
    tokyo = Place.new("Tokyo", "city", "asia", "temperate", "expensive","no")
    johannesburg = Place.new("Johannesburg", "city", "africa", "dry", "cheapest","yes")
    minneapolis = Place.new("Minneapolis", "city", "americas", "temperate", "not_too_cheap","yes")

    asturias_cantabria = Place.new("Austurias/Cantabria", "rural", "europe", "temperate", "cheapest","no")
    oichijuku = Place.new("Oichijuku", "rural", "asia", "temperate", "not_too_expensive","no")
    essaouira = Place.new("Essaouira", "rural", "africa", "dry", "not_too_cheap", "no")
    yosemite = Place.new("Yosemite", "rural", "americas", "temperate", "expensive", "yes")

    canazei = Place.new("Canazei", "mountain", "europe", "cold", "expensive", "no")
    gyalthang = Place.new("Gyalthang", "mountain", "asia", "temperate", "not_too_cheap", "no")
    table_mountain = Place.new("Table Mountain", "mountain", "africa", "hot", "not_too_expensive", "yes")
    coeur_dalene = Place.new("Coeur d'Alene", "mountain", "americas", "temperate", "not_too_expensive", "yes")

    rabbit_beach = Place.new("Rabbit Beach", "beach", "europe", "temperate", "expensive", "no")
    white_beach = Place.new("White Beach", "beach", "americas", "temperate", "not_too_expensive", "yes")
    anse_lazio = Place.new("Anse Lazio", "beach", "africa", "hot", "not_too_expensive", "yes")
    fulong_beach = Place.new("Fulong Beach", "beach", "asia", "temperate", "not_too_cheap", "no")
    
    places = [amsterdam, tokyo, johannesburg, minneapolis, asturias_cantabria, oichijuku, essaouira, yosemite, canazei, gyalthang, table_mountain, coeur_dalene, rabbit_beach, white_beach, anse_lazio, fulong_beach]

    choice_maker(params, places)
    @choice = pick(places)
    erb :results
  end
  
  get '/template' do
    erb :template
  end
  
  get '/sample' do
    erb :sample
  end
end