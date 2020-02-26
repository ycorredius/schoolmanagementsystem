class RemoveColumnsFromStudents < ActiveRecord::Migration[6.0]
  def change
    remove_column :students, :class_rooms_id, :bigint
  end
end
