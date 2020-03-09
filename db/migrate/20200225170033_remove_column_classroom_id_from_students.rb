class RemoveColumnClassroomIdFromStudents < ActiveRecord::Migration[6.0]
  def change

    remove_column :students, :class_id, :integer

    remove_column :students, :class_room_id, :integer
  end
end
