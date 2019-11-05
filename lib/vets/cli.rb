class Vets::CLI

  attr_accessor :all_vets

  def intro
    puts "Welcome, Which hospitals interest you?"
    list_vets
    user_input
    options
    goodbye
  end

  def list_vets
    vets=Vets::API.new #Creates a new API object
    vets.get_vets # gets all the vets in the array with return
    @all_vets = Vets::Vets.all
    @all_vets.each_with_index do |vet,index| #Allows a loop over the array
      puts "#{index + 1}. #{vet.name}"
    end

  end

  def user_input
    puts "Which hospital interests you?"
    input = gets.strip.chomp
    input.to_i
  end

  def options

  end

  def goodbye

  end
end
