class CreateClassRooms < ActiveRecord::Migration[6.0]
  def change
    create_table :class_rooms do |t|
      t.integer :size, default: 20
      t.boolean :is_teacher
      t.boolean :is_student
      t.boolean :subject_id
      t.integer :teacher_id
      t.integer :student_id

      t.timestamps
    end
  end
end
