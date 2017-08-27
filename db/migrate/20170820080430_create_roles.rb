class CreateRoles < ActiveRecord::Migration[5.1]
  def change
    create_table :roles do |t|
      t.string :name, null: false, limit: 50
      t.string :code, null: false, limit: 50
      t.timestamps
    end
    add_index :roles, :code, unique: true
  end
end
