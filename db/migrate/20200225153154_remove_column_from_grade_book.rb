class RemoveColumnFromGradeBook < ActiveRecord::Migration[6.0]
  def change

    remove_column :gradebooks, :teacher_id, :integer

    remove_column :gradebooks, :student_id, :integer
  end
end
