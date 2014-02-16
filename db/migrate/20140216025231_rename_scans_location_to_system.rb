class RenameScansLocationToSystem < ActiveRecord::Migration

  def change
    rename_column :scans, :location, :system
  end

end
