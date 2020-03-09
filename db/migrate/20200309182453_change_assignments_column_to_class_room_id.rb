class ChangeAssignmentsColumnToClassRoomId < ActiveRecord::Migration[6.0]
  def change
    remove_column :assignments, :class_rooms_id, :integer
    add_reference :assignments, :class_room, foreign_key: true
  end
end
