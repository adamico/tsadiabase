json.array!(@patients) do |patient|
  json.extract! patient, :sexe, :age, :diabete, :diabete_duree, :imc, :imc, :poids, :poids, :tabac, :hta, :dysplipidemie, :aomi, :ips, :coronarien, :cerebro_vasculaire, :cv_fam, :retinopathie, :neuropathie, :creat, :clearance, :microalb, :proteinurie, :ttt_aa, :ttt_diabete, :hba1c, :hba1c, :depistage, :suivi, :autres, :tsaami, :tsaant, :intro_statine, :intro_aa, :intro_iec, :ttt_chir, :angiotdm, :surv_doppler, :surv_doppler_freq
  json.url patient_url(patient, format: :json)
end
