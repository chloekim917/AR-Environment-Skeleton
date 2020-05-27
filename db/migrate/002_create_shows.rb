class CreateShows < ActiveRecord::Migration[5.1]
    def change
      create_table :shows do |t|
        t.string :name
        t.integer :network_id
        t.string :day
        t.string :genre
        t.string :season
      end
    end
  end