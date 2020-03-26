class RemoveGradebookColumnFromGrades < ActiveRecord::Migration[6.0]
  def change
    remove_column :grades, :gradebook_id, :bignint
  end
end
