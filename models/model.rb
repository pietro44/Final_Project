
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

def choice_maker(parameters, locs)  # weights the places
  locs.each {|place| place.weight += 2 if parameters["place_value"] == place.type}
  locs.each {|place| place.weight += 1 if parameters["price_range"] == place.price}
  locs.each {|place| place.weight += 1 if parameters["climate"] == place.climate}
  locs.each {|place| place.weight += 2 if parameters["continents"] == place.continent}
end

def pick(locs)  # picks place with the right weight 
  new = locs.sort {|one, two| one.weight <=> two.weight}
  new.first
end

