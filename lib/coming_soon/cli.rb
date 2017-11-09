class ComingSoon::CLI

  def call
    list_movies
    menu
    goodbye
  end

  def list_movies
    puts "Movies coming soon"
    puts <<-DOC
    1. Justice League (2017)
    2. Wonder (2017)
    DOC
  end

  def menu
    input = nil
    while input != "exit"
      puts "Enter the number of the movie you would like to learn more about, type list to see all the movies, or type exit:"
      input = gets.strip.downcase
      case input
      when "1"
        puts "More info on movie 1"
      when "2"
        puts "More info on movie 2"
      when "list"
        list_movies
      else
        puts "Not sure what you want, type list or exit."
      end
    end
  end

  def goodbye
    puts "Enjoy your movie!"
  end

end
