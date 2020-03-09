class RemoveColumnStudentId < ActiveRecord::Migration[6.0]
  def change
    remove_column :gradebooks, :students_id
    add_reference :gradebooks, :student, foreign_key: true
  end
end
