class CreateQualifications < ActiveRecord::Migration[6.0]
  def change
    create_table :qualifications do |t|
      t.string :title
      t.integer :teacher_id, default: nil

      t.timestamps
    end
  end
end
