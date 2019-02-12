 class GreatestMovies::Movies

  attr_accessor :list, :info, :cast     

    def self.scrape_imdb 
      doc = Nokogiri::HTML(open("https://www.imdb.com/list/ls055592025/"))
      doc.css(".lister-item-content").map do |m|
        movie = self.new

        movie.list = m.search("h3").text.gsub("\n", "").strip
        movie.cast = m.search("p")[2].text 
        movie.info = m.search("p")[1].text
        movie
      end
    end 

    def self.compile 
      self.scrape_imdb
    end 

   
    
end 