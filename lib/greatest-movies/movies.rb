 class GreatestMovies::Movies

   attr_accessor :name, :details, :ranking   
  
    # @@all = []
    
    # def initialize(name=nil, details=nil)
    #   @name=name 
    #   @details=details 
    # end 

    def self.get_page
      doc = Nokogiri::HTML(open("https://www.imdb.com/list/ls055592025/"))

      movie = self.new 
      movie.ranking = doc.search("h3.lister-item-header")[2].text.strip.gsub(/[\n]/,"") 
      binding.pry 
      # movie.name = doc.search()
    end 
  
    
  
  end