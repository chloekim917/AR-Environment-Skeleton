class Airline < ActiveRecord::Base
    has_many :flights

    def how_many_passengers
        self.flights.map {|flight| flight.passengers}.count
    end
end