class Vets::API
  require pry

  def self.get_vets
      resp = HTTParty.get("https://api.yelp.com/v3/businesses/search?term=vets&location=Santa+Cruz&limit=10", {
          # Some parameters are passed in via query string (eg term & location above - ?term=Spas&location=London)
          # And some in headers (eg authorization below)
          # This can depend on the API itself - check the documentation if you're not sure where to start.
          headers: {"Authorization" => "Bearer #{ENV['7T5fNLAmZXqNWwySKAAgCzYyJHnQGktDG8h6JXMteBljod6JSSKf9L3bGQotF2IfeQCKgKgLFPz9cBP88YptNELILgfZOOwYa7oO06fOD9F1pqeCnTbbzTq0xUStXXYx']}"},
      })
      binding.pry
      #this is a great place to debug. See what `resp` is - is it the data you want?
      #                                             Is it a message saying you forgot some authorization?
      vets = resp["businesses"]
      Vets.new_from_collection(spas)
  end
end
