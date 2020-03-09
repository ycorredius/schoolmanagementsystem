class CreateGradebooks < ActiveRecord::Migration[6.0]
  def change
    create_table :gradebooks do |t|
      
      t.timestamps
    end
    add_reference :gradebooks, :students, foreign_key: true
  end
end
