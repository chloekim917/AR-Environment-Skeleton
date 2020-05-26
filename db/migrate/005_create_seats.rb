class CreateSeats < ActiveRecord::Migration[4.2]
    def change
        create_table :seats do |t|
            t.string :seat_number
            t.string :location
        end
    end
end