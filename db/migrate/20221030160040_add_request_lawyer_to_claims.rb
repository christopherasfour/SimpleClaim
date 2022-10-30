class AddRequestLawyerToClaims < ActiveRecord::Migration
    def change
        add_foreign_key :lawyers, :claims, :requestLawyer, :lawyer_id
    end
end