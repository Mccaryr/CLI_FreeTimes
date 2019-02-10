 class GreatestMovies::Movies

  attr_accessor :list, :info, :cast     

  def self.scrape_movies 
    movies = []
    movies << self.scrape_imdb
    movies 
  end 

    def self.scrape_imdb 
      doc = Nokogiri::HTML(open("https://www.imdb.com/list/ls055592025/"))

      movie = self.new 
      movie.list = doc.search("h3.lister-item-header").text 
      movie.cast = doc.search("div.lister-item-content p")[2].text 
      movie.info = doc.search("div.lister-item-content p")[1].text 
      movie 
    end 

    def self.compile 
      self.scrape_movies 
    end 

   
    
end 