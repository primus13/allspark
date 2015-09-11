class AddCountriesToManufacturers < ActiveRecord::Migration
  def change
    add_reference :manufacturers, :country, index: true
    add_foreign_key :manufacturers, :countries
  end
end
