class Scraper 
  
  def get_page
    Nokogiri::HTML(open("https://www.imdb.com/list/ls055592025/"))
  end 
end 