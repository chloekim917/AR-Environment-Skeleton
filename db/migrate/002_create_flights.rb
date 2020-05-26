class CreateFlights < ActiveRecord::Migration[4.2]
    def change
        create_table :flights do |t|
            t.integer :flight_number
            t.string :departure_time
            t.string :arrival_time
            t.string :departure_city
            t.string :destination_city
        end
    end
end