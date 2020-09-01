class Trip

    attr_accessor :listing, :guest 

    def initialize(listing, guest)
        @listing = listing
        @guest = guest
    end
end