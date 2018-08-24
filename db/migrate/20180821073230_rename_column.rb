class RenameColumn < ActiveRecord::Migration
  def change
    rename_column :links, :post_id, :book_id
  end
end
