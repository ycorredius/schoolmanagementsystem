class AddForeignKeyToGradeBook < ActiveRecord::Migration[6.0]
  def change
    add_column :gradebooks, :assignment_id, :integer
  end
end
