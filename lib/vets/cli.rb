class Vets::CLI

  def intro
    puts "Welcome, Which hospitals interest you?"
    Vets::API.new
    list_vets
    user_input
    options
    goodbye
  end

  def list_vets

  end

  def user_input

  end

  def options

  end

  def goodbye

  end
end
