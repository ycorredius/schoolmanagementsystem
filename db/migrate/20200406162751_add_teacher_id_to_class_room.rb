class AddTeacherIdToClassRoom < ActiveRecord::Migration[6.0]
  def change
    add_column :class_rooms, :teacher_id, :int
  end
end
