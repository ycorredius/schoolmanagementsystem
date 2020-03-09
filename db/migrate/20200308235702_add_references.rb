class AddReferences < ActiveRecord::Migration[6.0]
  def change
    add_reference :grades, :class_rooms, foreign_key: true
  end
end
