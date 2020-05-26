class Seat < ActiveRecord::Base
    belongs_to :flight
    belongs_to :passenger

    def self.most_popular_location
        self.all.max_by {|seat| seat.location}
    end

    def self.total_number_of_seats
        self.all.count
    end

    def occupied_seat
        if self.passenger == nil
            puts "This is an empty seat"
        else 
            puts "This seat is for #{self.passenger.name}."
        end
    end

    def seat_number
        self.seat_number
    end
end