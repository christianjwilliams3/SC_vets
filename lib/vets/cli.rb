class Vets::CLI

  attr_accessor :all_vets

  def intro
    fetch_vets
    puts "Welcome, Which hospitals interest you?"
    user_choice = ""
    list_vets #listed vets
    while user_choice != "exit" #verify not exit
      user_choice = user_input #asked which one they want to see
      show_vet(user_choice.to_i) #show what they chose
      puts "Enter another a vet index or exit to Finish!"
    goodbye
  end
end

  def show_vet(user_choice)
    vet = @all_vets[user_choice - 1] #Choice per user to access array of vets
    puts "#{vet.name}, #{vet.location}, #{vet.rating}" # prints attributes of the single vet
  end

  def list_vets
    @all_vets = Vets::Vets.all
    @all_vets.each_with_index do |vet,index| #Allows a loop over the array
      puts "#{index + 1}. #{vet.name}" # Index of Vets name
    end
  end

  def fetch_vets
    vets=Vets::API.new #Creates a new API object
    vets.get_vets # gets all the vets in the array with return
  end

  def user_input
    input = gets.strip
  end

  def goodbye
      puts "Bye"
  end
end
