class CreateUserTries < ActiveRecord::Migration
  def self.up
    create_table :user_tries do |t|
      t.column :user_id,:integer
      t.column :coffee_type_id,:integer
      t.timestamps
    end
  end
  def self.down
  	drop_table :user_tries
  end
end
