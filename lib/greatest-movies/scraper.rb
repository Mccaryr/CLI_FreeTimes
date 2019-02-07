class Scraper 
  
  def get_page
    Nokogiri::HTML(open("https://www.free-times.com/events/#!/"))
  end 