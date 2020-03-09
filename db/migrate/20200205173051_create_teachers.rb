class CreateTeachers < ActiveRecord::Migration[6.0]
  def change
    create_table :teachers do |t|
      t.string :first_name
      t.string :last_name
      t.integer :qualification_id
      t.integer :class_id
      t.integer :student_id

      t.timestamps
    end
  end
end
