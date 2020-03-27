class AddReferenceToStudent < ActiveRecord::Migration[6.0]
  def change
    add_reference :class_rooms, :student,foreign_key: true
  end
end
