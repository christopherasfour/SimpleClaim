class CreateLawyerAuths < ActiveRecord::Migration
    def change
        create_table :lawyerAuth do |t|
            t.string :username
            t.string :password_digest
            t.integer :lawyer_id
        end
    end
end