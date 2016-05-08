class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :username, null: false
      t.string :email, null: false
      t.string :password, null: false
      t.integer :role_id, null: false, default: 2
      t.timestamps
    end
  end

  def self.down
    drop_table :users
  end
end
