class AddCompetencyRecordToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :competency_record, :text
  end
end
