class Patient < ActiveRecord::Base
  has_many :resultats, dependent: :destroy

  accepts_nested_attributes_for :resultats, allow_destroy: true, reject_if: proc { |obj| obj.blank? }

  PLUSMOINS = ["+", "-"]
  TTTDIABETE = (0..3)

  validates :age, :sexe, presence: true

  COLUMNS_FOR_CSV = [:sexe, :age, :diabete, :diabete_duree, :imc, :imc, :poids, :poids, :tabac, :hta, :dysplipidemie, :aomi, :ips, :coronarien, :cerebro_vasculaire, :cv_fam, :retinopathie, :neuropathie, :creat, :clearance, :microalb, :proteinurie, :ttt_aa, :ttt_aa_quoi, :ttt_diabete, :hba1c, :hba1c, :depistage, :suivi, :autres, :tsaami, :tsaant, :resultats_count]

  (1..3).each do |i|
    define_method :"resultat#{i}" do
      self.resultats[i-1]
    end
    COLUMNS_FOR_CSV << :"resultat#{i}"
  end

  COLUMNS_FOR_CSV << [:intro_statine, :intro_aa, :intro_iec, :ttt_chir, :angiotdm, :surv_doppler, :surv_doppler_freq]
  COLUMNS_FOR_CSV.flatten!

  def resultats_count
    resultats.count
  end
end
