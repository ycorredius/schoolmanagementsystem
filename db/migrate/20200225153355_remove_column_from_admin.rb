class RemoveColumnFromAdmin < ActiveRecord::Migration[6.0]
  def change

    remove_column :admins, :school_id, :integer
  end
end
