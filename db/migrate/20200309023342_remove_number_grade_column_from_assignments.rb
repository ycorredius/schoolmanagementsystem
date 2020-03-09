class RemoveNumberGradeColumnFromAssignments < ActiveRecord::Migration[6.0]
  def change
    remove_column :assignments, :number_grade, :string
    add_column :assignments, :number_grade, :integer
  end
end
