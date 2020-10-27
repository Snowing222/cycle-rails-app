class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :season
      t.string :style_number
      t.string :image_url
      t.text :description
      t.boolean :status
      t.date :deadline
      t.integer :production_partner_id
      t.integer :design_partner_id
      t.integer :manufacturer_partner_id

      t.timestamps
    end
  end
end
