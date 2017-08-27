class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name, null: false, limit: 50
      t.string :login_id, null: false, limit: 50
      t.string :password_digest, null: false
      t.timestamps
    end
    add_index :users, :login_id, unique: true
    create_table :users_roles do |t|
      t.references :user, null: false, foreign_key: true
      t.references :role, null: false, foreign_key: true
    end
    add_index :users_roles, [:user_id, :role_id], unique: true
  end
end
