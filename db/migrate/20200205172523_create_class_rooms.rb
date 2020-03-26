class CreateClassRooms < ActiveRecord::Migration[6.0]
  def change
    create_table :class_rooms do |t|
      t.integer :size, default: 20
      t.string :subject
      t.string :students
      t.timestamps
    end
  end
end
