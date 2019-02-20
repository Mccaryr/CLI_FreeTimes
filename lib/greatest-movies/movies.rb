 class GreatestMovies::Movies
  @@all = [] 
  attr_accessor :title, :info 
  
   
    def self.get_info(user_input)
      @@all[user_input.to_i-1].info
    end 

    def self.scrape_imdb 
      doc = Nokogiri::HTML(open("https://www.imdb.com/list/ls055592025/"))
      doc.css(".lister-item-content").map do |m|
        movie = self.new

        movie.title = m.search("h3").text.gsub("\n", "").strip
        movie.info = m.search("p")[1].text
        @@all << movie
        movie  
      end
    end 

    def self.compile
      self.scrape_imdb if @@all.empty?
    end

    def self.all
      @@all
    end

end 