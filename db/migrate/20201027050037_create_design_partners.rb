class CreateDesignPartners < ActiveRecord::Migration[6.0]
  def change
    create_table :design_partners do |t|
      t.string :name
      t.string :phone
      t.string :email
      t.string :title

      t.timestamps
    end
  end
end
