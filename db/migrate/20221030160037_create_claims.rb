class CreateClaims < ActiveRecord::Migration
    def change
        create_table :claims do |t|
            t.string :fname
            t.string :lname
            t.datetime :bday
            t.string :claimTypes
            t.string :description
            t.integer :lawyers_id
            t.timestamps null: false
            t.integer :users_id
            t.integer :decision, default: 0
            t.string :progress
        end
    end
end
  

