class Vets::CLI

  attr_accessor :all_vets

  def intro
    puts "Welcome, Which hospitals interest you?"
    user_choice = ""
    while user_choice != "exit" #verify not exit
      list_vets #listed vets
      puts "Which hospital interests you?"
      user_choice = user_input #asked which one they want to see
      show_vet(user_choice.to_i) #show what they chose
      puts "Enter another vet number or exit to finish, push exit to quit"
      user_choice = user_input 
    end
    goodbye
  end

  def show_vet(user_choice)
    vet = @all_vets[user_choice - 1] #Choice per user to access array of vets
    puts "#{vet.name}, #{vet.location}, #{vet.rating}" # prints attributes of the single vet
  end

  def list_vets
    vets=Vets::API.new #Creates a new API object
    vets.get_vets # gets all the vets in the array with return
    @all_vets = Vets::Vets.all
    @all_vets.each_with_index do |vet,index| #Allows a loop over the array
      puts "#{index + 1}. #{vet.name}" # Index of Vets name
    end

  end

  def user_input
    input = gets.strip
  end

  def goodbye
      puts "Bye"
  end
end
