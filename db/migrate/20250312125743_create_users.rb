class CreateUsers < ActiveRecord::Migration[8.0]
  def change
    create_table :users do |t|
      t.string :name
      t.integer :organization_id, null: false

      t.timestamps
    end

    add_foreign_key :users, :organizations
  end
end
