class ChangePoidsPrecisionInPatients < ActiveRecord::Migration
  def up
    change_table :patients do |t|
      t.change :poids, :decimal, precision: 4, scale: 1
    end
  end
  def down
    change_table :patients do |t|
      t.change :poids, :decimal, precision: 4, scale: 2
    end
  end
end
