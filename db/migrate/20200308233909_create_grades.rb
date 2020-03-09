class CreateGrades < ActiveRecord::Migration[6.0]
  def change
    create_table :grades do |t|
      t.references :student, null: false, foreign_key: true
      t.references :gradebook, null: false, foreign_key: true
      t.references :assignment, null: false, foreign_key: true

      t.timestamps
    end
  end
end
