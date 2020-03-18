class AddAssignmentIdToStudent < ActiveRecord::Migration[6.0]
  def change
    add_column :students, :assignment_id, :integer
    add_column :assignments, :student_id, :integer
  end
end
