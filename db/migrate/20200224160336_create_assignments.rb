class CreateAssignments < ActiveRecord::Migration[6.0]
  def change
    create_table :assignments do |t|
      t.string :title
      t.string :number_grade
      
      t.timestamps
    end
  end
end
