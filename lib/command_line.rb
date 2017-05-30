class CommandLine

  def self.greet
    puts "Welcome to MovieFinder, the command line solution to for your movie fact needs!"
    puts "What is your name?"
    name = gets.chomp
    puts "Hi #{name}"
  end

end
