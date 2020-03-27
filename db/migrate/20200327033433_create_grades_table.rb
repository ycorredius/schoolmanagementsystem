class CreateGradesTable < ActiveRecord::Migration[6.0]
  def change
    create_table :grades do |t|
      t.bigint :student_id
      t.bigint :assignment_id
      t.string :letter_grade
      t.bigint :class_room_id
      
    end
  end
end
