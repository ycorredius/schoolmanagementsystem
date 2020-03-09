class RemoveColumnFromGradebook < ActiveRecord::Migration[6.0]
  def change

    remove_column :gradebooks, :number_grade, :integer
  end
end
