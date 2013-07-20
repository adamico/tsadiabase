class AddTttAaQuoiToPatients < ActiveRecord::Migration
  def change
    add_column :patients, :ttt_aa_quoi, :string
  end
end
