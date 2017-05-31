class CommandLine

  def self.greet
    puts "Welcome to EntertainmentFinder, the command line solution for your venue entertainment needs!"
    puts "What is your name?"
    name = gets.chomp
    puts "Hi #{name}. Here is a list of companies: "
    api_adapter = ApiAdapter.new
    api_adapter.all_venue_names
  end

  def self.find_url_by_name
    puts "Please enter a company name from list for more info: "
    user_input = gets.chomp
    api_adapter = ApiAdapter.new
    api_adapter.get_company_info(user_input)
  end

end
