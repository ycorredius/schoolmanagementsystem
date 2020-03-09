class CreateAddAssignmentStudentTables < ActiveRecord::Migration[6.0]
  def change
    create_table :add_assignment_student_tables do |t|
      t.references :assignment, null: false, foreign_key: true
      t.references :student, null: false, foreign_key: true

      t.timestamps
    end
  end
end
