class Flight < ActiveRecord::Base
    has_many :passengers
    has_many :seats
    has_many :luggages, through: :passengers
    belongs_to :airline

    def self.find_flight_by_destination(destination_city)
        self.all.select {|flight| flight.destination_city = destination_city}
    end

    def self.flight_with_most_passengers
        self.all.max_by{|flight| flight.passengers}
    end
    
    def number_of_bags
        self.passengers.map {|passenger|passenger.baggage}.count
    end

    def empty_seats
        if self.seats.passenger == nil
            self.seats.seat_number
        else
            puts "It's a full flight"
        end
    end
end