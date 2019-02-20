class GreatestMovies::CLI

    def call 
        list_movies
        interface 
        goodbye 
    end 

    def list_movies 
        puts "Greatest Movies of All Time"
        GreatestMovies::Movies.compile

        GreatestMovies::Movies.all.each do |movie|
            puts "#{movie.title}"
        end 
    end 


    def interface 
        puts "Enter the number of the movie you'd like to know more about 
        or type list to see the movies again or exit to exit"
        user_input = nil
        while user_input !="exit"
        user_input=gets.strip.downcase 

            if user_input.to_i > 0 && user_input.to_i < 101  
                puts GreatestMovies::Movies.get_info(user_input)
               
            elsif user_input == "list"
                list_movies 
            
            else
               puts
               puts "Invalid response, type number of movie or list or exit."
               puts
            
            end 
        end

    end 

    def goodbye 
        puts "Have a nice day!!!!"
    end 
end