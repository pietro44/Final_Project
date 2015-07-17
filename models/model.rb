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
  attr_accessor :type, :name, :continent, :climate, :price, :weight
  def initialize(name,type,cont,climate,price)
    @name = name
    @type = type
    @continent = cont
    @climate = climate
    @price = price
    @weight = 0
  end
end

# amsterdam = Place.new("amsterdam", "city", "europe", "temperate", "not_too_expensive")
# tokyo = Place.new("tokyo", "city", "asia", "temperate", "expensive")
# johannesburg = Place.new("johannesburg", "city", "africa", "dry", "cheapest")
# minneapolis = Place.new("minneapolis", "city", "americas", "temperate", "not_too_cheap")

# asturias_cantabria = Place.new("austurias/cantabria", "rural", "europe", "temperate", "cheapest")
# oichijuku = Place.new("oichijuku", "rural", "asia", "temperate", "not_too_expensive")
# essaouira = Place.new("essaouira", "rural", "africa", "dry", "not_too_cheap")
# yosemite = Place.new("yosemite", "rural", "americas", "temperate", "expensive")

# canazei = Place.new("canazei", "mountain", "europe", "cold", "expensive")
# gyalthang = Place.new("gyalthang", "mountain", "asia", "temperate", "not_too_cheap")
# table_mountain = Place.new("table mountain", "mountain", "africa", "hot", "not_too_expensive")
# coeur_dalene = Place.new("coeur d'alene", "mountain", "americas", "temperate", "not_too_expensive")

# rabbit_beach = Place.new("Rabbit Beach", "beach", "europe", "temperate", "expensive")
# white_beach = Place.new("White Beach", "beach", "americas", "temperate", "not_too_expensive")
# anse_lazio = Place.new("Anse Lazio", "beach", "africa", "hot", "not_too_expensive")
# fulong_beach = Place.new("Fulong Beach", "beach", "asia", "temperate", "not_too_cheap")

#laces = [amsterdam, tokyo, johannesburg, minneapolis, asturias_cantabria, oichijuku, essaouira, yosemite, canazei, gyalthang, table_mountain, coeur_dalene, rabbit_beach, white_beach, anse_lazio, fulong_beach]

def choice_maker(parameters, locs)
  locs.each {|place| place.weight += 1 if parameters["place_value"] == place.type}
  locs.each {|place| place.weight += 1 if parameters["price_range"] == place.price}
  locs.each {|place| place.weight += 1 if parameters["climate"] == place.climate}
  locs.each {|place| place.weight += 1 if parameters["continents"] == place.continent}
end

def pick(locs)
  new = locs.sort {|one, two| one.weight <=> two.weight}
  new.first
end

