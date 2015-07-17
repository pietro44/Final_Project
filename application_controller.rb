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
    amsterdam = Place.new("Amsterdam", "city", "europe", "temperate", "not_too_expensive")
    tokyo = Place.new("Tokyo", "city", "asia", "temperate", "expensive")
    johannesburg = Place.new("Johannesburg", "city", "africa", "dry", "cheapest")
    minneapolis = Place.new("Minneapolis", "city", "americas", "temperate", "not_too_cheap")

    asturias_cantabria = Place.new("Austurias/cantabria", "rural", "europe", "temperate", "cheapest")
    oichijuku = Place.new("Oichijuku", "rural", "asia", "temperate", "not_too_expensive")
    essaouira = Place.new("Essaouira", "rural", "africa", "dry", "not_too_cheap")
    yosemite = Place.new("Yosemite", "rural", "americas", "temperate", "expensive")

    canazei = Place.new("Canazei", "mountain", "europe", "cold", "expensive")
    gyalthang = Place.new("Gyalthang", "mountain", "asia", "temperate", "not_too_cheap")
    table_mountain = Place.new("Table Mountain", "mountain", "africa", "hot", "not_too_expensive")
    coeur_dalene = Place.new("Coeur D'alene", "mountain", "americas", "temperate", "not_too_expensive")

    rabbit_beach = Place.new("Rabbit Beach", "beach", "europe", "temperate", "expensive")
    white_beach = Place.new("White Beach", "beach", "americas", "temperate", "not_too_expensive")
    anse_lazio = Place.new("Anse Lazio", "beach", "africa", "hot", "not_too_expensive")
    fulong_beach = Place.new("Fulong Beach", "beach", "asia", "temperate", "not_too_cheap")
    
    places = [amsterdam, tokyo, johannesburg, minneapolis, asturias_cantabria, oichijuku, essaouira, yosemite, canazei, gyalthang, table_mountain, coeur_dalene, rabbit_beach, white_beach, anse_lazio, fulong_beach]

    choice_maker(params, places)
    @choice = pick(places)
    erb :results
  end
  
  get '/template' do
    erb :template
  end
  
  get '/quest' do
    erb :quest
  end

  get '/sample' do
    erb :sample
  end
end