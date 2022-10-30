class CreateClaims < ActiveRecord::Migration
    def change
        create_table :claims do |t|
            t.string :fname
            t.string :lname
            t.datetime :bday
            t.string :claimTypes
            t.string :description
            t.timestamps null: false
        end
    end
end
  

