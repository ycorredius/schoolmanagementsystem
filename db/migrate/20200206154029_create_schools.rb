class CreateSchools < ActiveRecord::Migration[6.0]
  def change
    create_table :schools do |t|
      t.string :name
      t.string :address
      t.integer :admin_id
      t.integer :teacher_id
      t.integer :student_id
      t.integer :classroom_id
      
      t.timestamps
    end
  end
end
