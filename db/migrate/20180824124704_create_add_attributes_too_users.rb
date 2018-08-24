class CreateAddAttributesTooUsers < ActiveRecord::Migration
  def change
    create_table :add_attributes_too_users do |t|

      t.timestamps null: false
      
      add_column :users, :name, :string
    end
  end
end
