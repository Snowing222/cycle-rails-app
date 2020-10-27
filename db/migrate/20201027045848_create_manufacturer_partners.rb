class CreateManufacturerPartners < ActiveRecord::Migration[6.0]
  def change
    create_table :manufacturer_partners do |t|
      t.string :name
      t.string :address

      t.timestamps
    end
  end
end
