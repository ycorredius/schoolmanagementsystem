class CreateClassRooms < ActiveRecord::Migration[6.0]
  def change
    create_table :class_rooms do |t|
      t.integer :size, default: 20
      t.string :grade
      t.string :name
      t.string :subject
      t.integer :teacher_id, default: nil
      t.integer :student_id, default: nil

      t.timestamps
    end
  end
end
