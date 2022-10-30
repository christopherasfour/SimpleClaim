class AddRequestLawyerToClaims < ActiveRecord::Migration
    def change
        add_foreign_key :lawyers, :claims, column:  :requestLawyer, primary_key: :lawyer_id
    end
end