class AddAssignmentReference < ActiveRecord::Migration[6.0]
  def change
    add_reference :assignments, :class_rooms, foreign_key: true
  end
end
