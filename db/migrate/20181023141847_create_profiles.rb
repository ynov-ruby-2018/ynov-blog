class CreateProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :profiles do |t|
      t.timestamps
      t.integer :user_id
      t.text :description
    end
  end
end
