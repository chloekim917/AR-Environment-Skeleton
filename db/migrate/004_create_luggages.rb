class CreateLuggages < ActiveRecord::Migration[4.2]
    def change
        create_table :luggages do |t|
            t.string :size
        end
    end
end