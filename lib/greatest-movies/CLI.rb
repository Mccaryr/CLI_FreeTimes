class GreatestMovies::CLI

    def call 
        puts "Greatest Movies of All Time"
        list_movies
        interface 
        goodbye 
    end 

    def list_movies 
    end 

    def interface 
        puts "Enter the number of the movie you'd like to know more about"
        user_input = nil
        while user_input !="exit"
        if user_input.to_i > 0 
            puts @movies[user_input.to_i-1] 
        else
            "Invalid response, type number of movie or exit."
        end 

    end 

    def goodbye 
        puts "Have a nice day!!!!"
    end 
end 