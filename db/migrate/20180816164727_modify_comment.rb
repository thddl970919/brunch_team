class ModifyComment < ActiveRecord::Migration
  def change
    rename_column :comments, :post_id, :new_id
  end
end
