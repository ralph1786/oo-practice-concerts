class Concert

    attr_accessor :date, :band, :venue

    @@all = []

    def initialize(date, band, venue)
        @date = date
        @band = band
        @venue = venue
        @@all << self
    end

    def self.all
        @@all
    end

    def venue_location
        Venue.city
    end

    def band_hometown
        Band.hometown
    end

    def hometown_show?
        if venue_location == band_hometown
            true
        else
            false
        end
    end

end

# #### CONCERT
# - 
# - Concert should have a method Concert#hometown_show? that returns true if the concert is in the band's hometown