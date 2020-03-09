class AddColumnLetterGradeToGrades < ActiveRecord::Migration[6.0]
  def change
    add_column :grades, :letter_grade, :string
  end
end
