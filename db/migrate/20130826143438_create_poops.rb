class CreatePoops < ActiveRecord::Migration
  def self.up
    create_table :poops do |t|
      t.integer :user_id
      t.integer :consistency
      t.text :notes

      t.timestamps
    end
  end

  def self.down
    drop_table :poops
  end
end
