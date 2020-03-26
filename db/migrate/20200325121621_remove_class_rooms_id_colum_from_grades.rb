class RemoveClassRoomsIdColumFromGrades < ActiveRecord::Migration[6.0]
  def change
    remove_column :grades, :class_rooms_id, :bigint
    add_column :grades, :class_room_id, :bigint
  end
end
