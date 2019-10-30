
class Vets::Vet

  attr_accessor :name, :location, :rating
  @@all = []

 def initialize(attrs)
   @name = name
   @location = location
   @rating = rating
 end

 def new_vets
   vets.collect.new { |vet| puts "name","location", "rating"}
 end




end
