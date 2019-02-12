class GreatestMovies::CLI

    def call 
        list_movies
        interface 
        goodbye 
    end 

    def list_movies 
        puts "Greatest Movies of All Time"
        @movies = GreatestMovies::Movies.compile
        binding.pry
        @movies.each do |movie|
            puts "#{movie.list}"
            # binding.pry 
            
        end 
    end 

    # def movie_info_cast 
    #     @movie_info = GreatestMovies::Movies.compile 
    #     @movie_info.each do |movie|
    #         puts "#{movie.info}"
    #     end 
    # end 
            

    def interface 
        puts "Enter the number of the movie you'd like to know more about or type list to see the movies again"
        user_input = nil
        while user_input !="exit"
        user_input=gets.strip.downcase 
            if user_input.to_i > 0 && user_input.to_i < 101
                @movies = GreatestMovies::Movies.compile 
                @movies.each do |movie|
                    puts "#{movie.info}"
                end 
               
            elsif user_input == "list"
                list_movies 
            else
                "Invalid response, type number of movie or list or exit."
            
            end 
        end

    end 

    def goodbye 
        puts "Have a nice day!!!!"
    end 
end 