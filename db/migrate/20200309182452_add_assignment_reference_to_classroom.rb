class AddAssignmentReferenceToClassroom < ActiveRecord::Migration[6.0]
  def change
    add_reference :class_rooms, :assignment, foreign_key: true
  end
end
