class CreateBooks < ActiveRecord::Migration[5.1]
  def change
    create_table :books do |t|
      t.string :book
      t.text :introduction
      t.string :author
      t.integer :price

      t.timestamps
    end
  end
end
