class Resultat < ActiveRecord::Base
  belongs_to :patient
  LIBELLE = ["a - normal", "b - epaississement ou surcharge pariétaux", "c - plaques non sténosantes", "d - plaques sténosantes"]
  SIEGE = ["a - bifurcation", "b - CP", "c - CI", "d - CE"]

  def to_s
    [libelle, siege, cote, description].compact.select {|item| !item.blank?}.map(&:strip_string_identifier).join(" - ")
  end

end

class String
  def strip_string_identifier
    self.gsub(/^[a-z] - /, "")
  end
end
