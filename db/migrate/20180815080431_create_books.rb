class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :book_title
      t.string :book_writer
      t.string :book_group
      t.text :book_sum
      t.text :book_tmi

      t.timestamps null: false
    end
  end
end
