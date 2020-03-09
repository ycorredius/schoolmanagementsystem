class RemoveColumnsFromClassRoom < ActiveRecord::Migration[6.0]
  def change

    remove_column :class_rooms, :grade, :string

    remove_column :class_rooms, :subject, :string
  end
end
