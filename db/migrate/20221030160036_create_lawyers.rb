class CreateLawyers < ActiveRecord::Migration
    def change
        create_table :lawyers do |t|
            t.string :fname
            t.string :lname
            t.datetime :bday
            t.string :location
            t.string :education
            t.float :winRate
            t.string :aboutMe
            t.timestamps null: false
        end
    end
end
