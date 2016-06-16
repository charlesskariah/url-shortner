class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
      t.string :incoming_url
      t.string :outgoing_url
      t.integer :clicks, :default => 0
      t.integer :status, :default => 301

      t.timestamps null: false
    end
  end
end
