class CommandLine

  def self.greet
    puts "Welcome to Times Square: EntertainmentFinder, the command line solution for your venue entertainment needs!"
    puts "What is your name?"
    name = gets.chomp
    puts "Hi #{name}. Please select an option: "
  end

  def self.get_user_input
    puts "1. See a list of company names."
    puts "2. Search by category."
    puts "3. Type 'quit' to exit."
    user_input = gets.chomp
    case user_input
    when "1"
      api_adapter = ApiAdapter.new
      api_adapter.all_venue_names
      puts "Please enter a company name for more info: "
      api_adapter.get_company_info(user_input)
    when "2"
      api_adapter = ApiAdapter.new
      api_adapter.all_category_names
      puts "Please enter category type for list of choices: "
      user_input2 = gets.chomp
      api_adapter.list_by_category(user_input2)
    when "quit"
      puts "Enjoy your adventures!!"
    else
    api_adapter = ApiAdapter.new
    api_adapter.get_company_info(user_input)
    end
  end
  
end
