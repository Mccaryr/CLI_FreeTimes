Class FreeTimesEvents

  attr_accessor :name, :details, :date_time, :location 
  
    @@all = []
    
    def initialize(name=nil, location=nil, date_time=nil, details=nil)
      @name=name 
      @location=location 
      @date_time=date_time
      @details=details 