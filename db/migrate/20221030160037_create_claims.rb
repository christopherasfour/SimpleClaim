class CreateClaims < ActiveRecord::Migration
    def change
        create_table :claims do |t|
            t.string :fname
            t.string :lname
            t.datetime :bday
            t.string :claimTypes
            t.string :description
            t.references :lawyers, foreign_key: true
            t.timestamps null: false
            t.references :users, foreign_key: true
            t.integer :decision, default: 0
        end
    end
end
  

