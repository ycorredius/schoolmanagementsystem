class AddForeignKeyToStudents < ActiveRecord::Migration[6.0]
  def change
    add_reference :students, :class_room, foreign_key: true
  end
end
