class CreateScans < ActiveRecord::Migration

  def change
    create_table :scans do |table|
      table.string :location
      table.text :content
      table.timestamps
    end
  end

end
