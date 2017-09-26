class AddUserIdToRecord < ActiveRecord::Migration[5.1]
  def change
    add_column :records, :user_id, :integer
  end
end
