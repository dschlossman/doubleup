class CreateDoubles < ActiveRecord::Migration
  def self.up
    create_table :doubles do |t|
      t.integer :rate
      t.integer :time

      t.timestamps
    end
  end

  def self.down
    drop_table :doubles
  end
end
