class CreateResultats < ActiveRecord::Migration
  def change
    create_table :resultats do |t|
      t.string :libelle
      t.string :siege
      t.string :cote
      t.belongs_to :patient, index: true

      t.timestamps
    end
  end
end
