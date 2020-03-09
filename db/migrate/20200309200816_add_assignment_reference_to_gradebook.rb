class AddAssignmentReferenceToGradebook < ActiveRecord::Migration[6.0]
  def change
    add_reference :gradebooks, :assignment, foreign_key: true
  end
end
