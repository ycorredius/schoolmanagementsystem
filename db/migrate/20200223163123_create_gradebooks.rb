class CreateGradebooks < ActiveRecord::Migration[6.0]
  def change
    create_table :gradebooks do |t|
      t.string :letter_grade
      t.integer :number_grade
      t.integer :class_room_id
      t.integer :teacher_id
      t.integer :student_id

      t.timestamps
    end
  end
end
