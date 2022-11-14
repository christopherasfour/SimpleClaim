class CreateLawyers < ActiveRecord::Migration[4.2]
    def change
        create_table :lawyers do |t|
            t.string :fname
            t.string :lname
            t.datetime :bday
            t.string :location
            t.string :education
            t.float :winRate
            t.string :aboutMe
            t.string :username
            t.string :password_digest
            t.timestamps null: false
        end
    end
end
