class CreateStudents < ActiveRecord::Migration[6.0]
  def change
    create_table :students do |t|
      t.string :first_name
      t.string :last_name
      t.string :age
      t.string :email
      t.integer :teacher_id
      t.integer :class_id

      t.timestamps
    end
  end
end
