class RemoveColumnsFromUser < ActiveRecord::Migration[5.2]
  def change
  	remove_column :users, :height
  	remove_column :users, :weight
  	remove_column :users, :medical
  	remove_column :users, :family_illness
  	remove_column :users, :license
  end
end
