class CreateComments < ActiveRecord::Migration
  def self.up
    create_table :comments do |t|
      t.column :comment,:string
      t.column :user_id,:integer
      t.column :coffee_type_id,:integer
      t.timestamps
    end
  end

  def self.down
     drop_table :comments
  end
end
