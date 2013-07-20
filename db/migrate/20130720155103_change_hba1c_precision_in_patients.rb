class ChangeHba1cPrecisionInPatients < ActiveRecord::Migration
  def up
    change_table :patients do |t|
      t.change :hba1c, :decimal, precision: 3, scale: 1
    end
  end
  def down
    change_table :patients do |t|
      t.change :hba1c, :decimal, precision: 2, scale: 1
    end
  end
end
