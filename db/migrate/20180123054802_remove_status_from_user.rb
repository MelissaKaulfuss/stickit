class RemoveStatusFromUser < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :status, :integer
  end
end
