class CreateClaims < ActiveRecord::Migration[4.2]
    def change
        create_table :claims do |t|
            t.string :fname
            t.string :lname
            t.datetime :bday
            t.string :claimTypes
            t.string :description
            t.references :lawyers, foreign_key: true
            t.timestamps null: false
        end
    end
end
  

