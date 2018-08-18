class CreateNews < ActiveRecord::Migration
  def change
    create_table :news do |t|
      t.integer :book_id
      t.string :news_name
      t.text :news_content

      t.timestamps null: false
    end
  end
end
