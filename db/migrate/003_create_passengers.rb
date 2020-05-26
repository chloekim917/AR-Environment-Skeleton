class CreatePassengers < ActiveRecord::Migration[4.2]
    def change
        create_table :passengers do |t|
            t.string :name
            t.integer :age
            t.string :seat_preference
        end
    end
end