class AddGradeReferenceToAssignmentTable < ActiveRecord::Migration[6.0]
  def change
    add_reference :assignments, :grade, foreign_key: true
  end
end
