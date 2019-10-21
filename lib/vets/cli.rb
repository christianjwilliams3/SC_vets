class Vets::CLI

  def intro
    puts "Welcome, Which hospitals interest you?"
    list_vets
    get_user_input
    validate(@input)
    options
  end
    "Have a good day!"
end


end
