class CreateHellos < ActiveRecord::Migration
  def self.up
    create_table :hellos do |t|
      t.string :greeting

      t.timestamps
    end
  end

  def self.down
    drop_table :hellos
  end
end
