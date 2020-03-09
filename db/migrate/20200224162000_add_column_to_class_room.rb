class AddColumnToClassRoom < ActiveRecord::Migration[6.0]
  def change
    add_column :class_rooms, :gradebook_id, :integer
  end
end
