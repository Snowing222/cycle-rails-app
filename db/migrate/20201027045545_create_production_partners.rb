class CreateProductionPartners < ActiveRecord::Migration[6.0]
  def change
    create_table :production_partners do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.string :title
      t.string :password_digest
    

      t.timestamps
    end
  end
end
