class AddDescriptionToResultats < ActiveRecord::Migration
  def change
    add_column :resultats, :description, :string
  end
end
