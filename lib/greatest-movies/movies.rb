 class GreatestMovies::Movies
  @@all = [] 
  attr_accessor :list, :info 
  
   
    def self.get_info(user_input)
      @@all[user_input.to_i-1]
    end 

    def self.scrape_imdb 
      doc = Nokogiri::HTML(open("https://www.imdb.com/list/ls055592025/"))
      doc.css(".lister-item-content").map do |m|
        movie = self.new

        movie.list = m.search("h3").text.gsub("\n", "").strip
        @@all << movie.info = m.search("p")[1].text
        movie  
      end
    end 

    def self.compile 
      self.scrape_imdb
    end 

end 