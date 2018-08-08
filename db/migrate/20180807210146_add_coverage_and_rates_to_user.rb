class AddCoverageAndRatesToUser < ActiveRecord::Migration[5.2]
  def change
  	add_column :users, :coverage, :string
  	add_column :users, :term, :string
  end
end
