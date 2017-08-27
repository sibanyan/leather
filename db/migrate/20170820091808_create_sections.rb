class CreateSections < ActiveRecord::Migration[5.1]
  def change
    create_table :sections do |t|
      t.string :title, null: false
      t.text :explanation
      t.timestamps
    end
  end
end
