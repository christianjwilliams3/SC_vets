
class Vets::Vets

  attr_accessor :name, :location, :rating
  @@all = []

 def initialize(name, location, rating)
   @name = name
   @location = location
   @rating = rating
   @@all << self
 end

 def self.all
   @@all
 end
 
 def new_vets
   vets.collect.new { |vet| puts "name","location", "rating"}
 end




end
