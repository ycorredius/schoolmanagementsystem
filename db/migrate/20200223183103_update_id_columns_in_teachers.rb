class UpdateIdColumnsInTeachers < ActiveRecord::Migration[6.0]
  def change
    remove_column :teachers, :qualification_id
    remove_column :teachers, :class_id
    remove_column :teachers, :student_id
  end
end
