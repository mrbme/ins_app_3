class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :zip_code
      t.string :age
      t.string :height
      t.string :weight
      t.string :tobacco
      t.string :medical
      t.string :family_illness
      t.string :license
      t.string :gender

      t.timestamps
    end
  end
end
