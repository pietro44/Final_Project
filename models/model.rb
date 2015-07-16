# def choice_maker(parameters)
#  groups ={:mountain =>{
#     mountain1: 0,
#     mountain2: 0,
#     mountain3: 0,
#     mountain4: 0
#     },
#  :urban => {
#     amsterdam: 0,
#     johannesburg: 0,
#     city3: 0,
#     city4:0
#     },
#  :beach =>{
#     beach1: 0,
#     beach2: 0,
#     beach3: 0,
#     beach4: 0
#     },
#  :rural =>{
#     rural1: 0,
#     rural2: 0,
#     rural3: 0,
#     rural4: 0
#     }
#    }
#   parameters.each do |key, value|
#     if groups[parameters["place_value"].to_sym][(key).to_sym]
#       groups[parameters["place_value"].to_sym][(key).to_sym] += 1
#     end
#   end
#   return groups[:urban]
# end

class Place
  attr_accessor :type, :name, :continent, :climate, :price
  def initialize(name,type,cont,climate,price)
    @name = name
    @type = type
    @continent = cont
    @climate = climate
    @price = price
    @weight = 0
  end
end

amsterdam = Place.new("amsterdam", "city", "europe", "temperate", "not_too_expensive")
tokyo = Place.new("tokyo", "city", "asia", "temperate", "expensive")
johannesburg = Place.new("johannesburg", "city", "africa", "dry", "cheapest")
minneapolis = Place.new("minneapolis", "city", "americas", "temperate", "not_too_cheap")

asturias_cantabria = Place.new("austurias/cantabria", "rural", "europe", "temperate", "cheapest")
oichijuku = Place.new("oichijuku", "rural", "asia", "temperate", "not_too_expensive")
essaouira = Place.new("essaouira", "rural", "africa", "dry", "not_too_cheap")
yosemite = Place.new("yosemite", "rural", "americas", "temperate", "expensive")

canazei = Place.new("canazei", "mountain", "europe", "cold", "expensive")
gyalthang = Place.new("gyalthang", "mountain", "asia", "temperate", "not_too_cheap")
table_mountain = Place.new("table mountain", "mountain", "africa", "dry", "not_too_expensive")
coeur_dalene = Place.new("coeur d'alene", "mountain", "americas", "temperate", "not_too_expensive")

rabbit_beach = Place.new("rabbit beach" )