class CreateSubjects < ActiveRecord::Migration[6.0]
  def change
    create_table :subjects do |t|
      t.string :title
      t.integer :class_id
      t.integer :teacher_id

      t.timestamps
    end
  end
end
