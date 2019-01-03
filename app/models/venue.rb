class Venue
    
    attr_accessor :title
    attr_reader :city

    @@all = []

    def initialize(title, city)
        @title = title
        @city = city
        @@all << self
    end

    def self.all
        @@all
    end

    def concerts
        Concert.all.select do |concert|
            concert.venue == self
        end
    end

    def bands
        concerts.map do |concert|
            concert.band
        end
    end 

    def band_location
        bands.hometown
    end

    def venue_location
        @city
    end

    def self.most_hometown_shows
        container = []
        if band_location == venue_location
            container << self
        end
        container.max_by{|x| x.count}
    end

end



# #### VENUE
# 
# - Venue should have a method Venue.most_hometown_shows that returns the instance of Venue that has hosted the most hometown shows