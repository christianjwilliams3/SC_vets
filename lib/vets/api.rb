class Vets::API
  require pry

  def self.get_vets
      resp = HTTParty.get("https://api.yelp.com/v3/businesses/search?term=vets&location=Santa+Cruz&limit=10", {
        headers: {"Authorization" => "Bearer #{ENV['7T5fNLAmZXqNWwySKAAgCzYyJHnQGktDG8h6JXMteBljod6JSSKf9L3bGQotF2IfeQCKgKgLFPz9cBP88YptNELILgfZOOwYa7oO06fOD9F1pqeCnTbbzTq0xUStXXYx']}"
        
        },
      })
      vets = resp["businesses"]
      binding.pry 
      Vets.new_from_collection(vets)
  end
end
