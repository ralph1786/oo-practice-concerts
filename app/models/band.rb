class Band

    attr_accessor :name
    attr_reader :hometown

    @@all = []


    def initialize(name, hometown)
        @name = name
        @hometown = hometown
        @@all << self
        
    end

    def self.all
        @@all
    end

    def play_in_venue(date, venue)
        Concert.new(date, self, venue)
    end

    def concerts
        Concert.all.select do |concert|
            concert.band == self
        end
    end

    def self.all_introductions
        self.all.map do |band|
            puts "Hello, we are #{name} and we're from #{hometown}"
        end
    end

    def venues
        concerts.map do |concert|
            concert.venues
        end
    end

end
