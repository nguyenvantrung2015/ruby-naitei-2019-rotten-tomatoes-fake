class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email, null: false, default: ""
      t.string :organization
      t.integer :role
      # t.string :remember_token

      t.timestamps
    end
  end
end
