class CreateResources < ActiveRecord::Migration[5.1]
  def change
    create_table :resources do |t|
      t.string :type, null: false, comment: "text,image,movieなどを識別する"
      t.string :url, null: false
      t.integer :order, null: false
      t.references :article, null: false, foreign_key: true
      t.timestamps
    end
    add_index :resources, [:order, :article_id], unique: true
  end
end
