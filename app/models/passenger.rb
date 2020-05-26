class Passenger < ActiveRecord::Base
    belongs_to :flight
    has_many :luggages
    has_one :seat

    def checked_bag
        checked_bag_counter = 0
        if self.luggages.size == "Check in"
            checked_bag_counter += 1
        else
            puts "You don't have any check bag"
        end
    end

    def happy_with_seats
        if self.seat_preference == self.seat.seat_location
            p "Happy to be seating where I wanted"
        else
            p "I guess I wasn't lucky this time"
        end
    end

    def seat_number
        self.seat.seat_number
    end

    def self.youngest_passenger
        self.all.min_by {|passenger| passenger.age}
    end

    def self.aisle_seat_passengers
        self.all.select {|passenger| passenger.seat.seat_location == "Aisle"}
    end
end