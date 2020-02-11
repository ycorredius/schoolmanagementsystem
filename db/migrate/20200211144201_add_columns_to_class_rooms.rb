class AddColumnsToClassRooms < ActiveRecord::Migration[6.0]
  def change
    add_column :class_rooms, :name, :string
    add_column :class_rooms, :subject, :string
  end
end
