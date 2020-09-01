class Listing

    attr_reader :city

    @@all = [] #[houston, dallas, austin]

    def initialize(city) # houston = Listing.new("houston")
        @city = city
        @@all << self
    end

    def trips #houston.trips = []
    end

    def self.all 
        @@all
    end
end