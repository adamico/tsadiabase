class Patient < ActiveRecord::Base
  has_many :resultats, dependent: :destroy

  accepts_nested_attributes_for :resultats, allow_destroy: true, reject_if: proc { |obj| obj.blank? }
end
