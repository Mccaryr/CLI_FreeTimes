Class GreatestMovies::Movies

  attr_accessor :name, :details, :genre, :url  
  
    @@all = []
    
    def initialize(name=nil, details=nil)
      @name=name 
      @details=details 
    end 

   
end 
