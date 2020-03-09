class AddColumnToStudent < ActiveRecord::Migration[6.0]
  def change
    add_column :students, :class_room_id, :integer
  end
end
