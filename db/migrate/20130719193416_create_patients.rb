class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.string :sexe
      t.integer :age
      t.string :diabete
      t.integer :diabete_duree
      t.decimal :imc, precision: 4, scale: 1
      t.decimal :poids, precision: 4, scale: 2
      t.string :tabac
      t.string :hta
      t.string :dysplipidemie
      t.string :aomi
      t.string :ips
      t.string :coronarien
      t.string :cerebro_vasculaire
      t.string :cv_fam
      t.string :retinopathie
      t.string :neuropathie
      t.integer :creat
      t.string :clearance
      t.string :microalb
      t.string :proteinurie
      t.string :ttt_aa
      t.integer :ttt_diabete
      t.decimal :hba1c, precision: 2, scale: 1
      t.boolean :depistage
      t.boolean :suivi
      t.string :autres
      t.boolean :tsaami
      t.boolean :tsaant
      t.boolean :intro_statine
      t.boolean :intro_aa
      t.boolean :intro_iec
      t.boolean :ttt_chir
      t.boolean :angiotdm
      t.boolean :surv_doppler
      t.string :surv_doppler_freq

      t.timestamps
    end
  end
end
