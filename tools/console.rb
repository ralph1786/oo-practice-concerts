require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


band1 = Band.new("Harry Boys", "NYC")
band2 = Band.new("Heavy Smach", "LA")
band3 = Band.new("Unknown", "Florida")

venue1 = Venue.new("The Rock", "NYC")
venue2 = Venue.new("Magic Hall", "Dallas")
venue3 = Venue.new("Underground", "Boston")

concert1 = Concert.new("February", band1, venue2)
concert1 = Concert.new("March", band2, venue1)
concert1 = Concert.new("April", band3, venue3)
concert1 = Concert.new("May", band1, venue1)

binding.pry
puts "goodbye"
