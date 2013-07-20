class Patient < ActiveRecord::Base
  has_many :resultats, dependent: :destroy

  accepts_nested_attributes_for :resultats, allow_destroy: true, reject_if: proc { |obj| obj.blank? }

  PLUSMOINS = ["+", "-"]
  TTTDIABETE = (0..3)

  validates :age, :sexe, presence: true

  COLUMNS_FOR_CSV = [:sexe, :age, :diabete, :diabete_duree, :imc, :imc, :poids, :poids, :tabac, :hta, :dysplipidemie, :aomi, :ips, :coronarien, :cerebro_vasculaire, :cv_fam, :retinopathie, :neuropathie, :creat, :clearance, :microalb, :proteinurie, :ttt_aa, :ttt_diabete, :hba1c, :hba1c, :depistage, :suivi, :autres, :tsaami, :tsaant, :intro_statine, :intro_aa, :intro_iec, :ttt_chir, :angiotdm, :surv_doppler, :surv_doppler_freq]

  (1..3).each do |i|
    %w(libelle siege cote).each do |field|
      define_method :"#{field}#{i}" do
        self.resultats[i-i].send(:try, field)
      end
      COLUMNS_FOR_CSV << :"#{field}#{i}"
    end
  end
end
