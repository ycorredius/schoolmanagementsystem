class AddGradesIdToGradeBook < ActiveRecord::Migration[6.0]
  def change
    add_column :gradebooks, :grades_id, :integer
  end
end
