class Resultat < ActiveRecord::Base
  belongs_to :patient
  LIBELLE = ["a - normal", "b - epaississement ou surcharge pariétaux", "c - plaques non sténosantes", "d - plaques sténosantes"]
  SIEGE = ["a - bifurcation", "b - CP", "c - CI", "d - CE"]
end
