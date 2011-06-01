class CreateCanvas < ActiveRecord::Migration
  def self.up
    create_table :canvas do |t|
      t.string :name
      t.text :problem
      t.text :solution
      t.text :key_metrics
      t.text :uvp
      t.text :unfair_advantage
      t.text :channels
      t.text :customer_segments
      t.text :cost_structure
      t.text :revenue_streams

      t.timestamps
    end
  end

  def self.down
    drop_table :canvas
  end
end
