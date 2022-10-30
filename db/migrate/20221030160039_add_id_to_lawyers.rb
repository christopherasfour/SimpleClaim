class AddIdToLawyers < ActiveRecord::Migration
    def change
        add_column :lawyers, :lawyer_id, :integer
    end
end
