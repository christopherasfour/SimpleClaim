class CreateClaims < ActiveRecord::Migration
    def change
        create_table :claims do |t|
            t.string :fname
            t.string :lname
            t.datetime :bday
            t.string :claimTypes
            t.string :description
            t.integer :lawyers
            t.timestamps null: false
            t.integer :users
            t.integer :decision, default: 0
        end
    end
end
  

