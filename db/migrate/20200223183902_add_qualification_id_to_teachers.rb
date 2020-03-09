class AddQualificationIdToTeachers < ActiveRecord::Migration[6.0]
  def change
    add_column :teachers, :qualification_id, :integer, default: nil
   
  end
end
