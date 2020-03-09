class UpdateAssignmentColumn < ActiveRecord::Migration[6.0]
  def change
    remove_column :assignments, :number_grade, :integer
    add_column :assignments, :number_grade, :integer, default: nil
  end
end
