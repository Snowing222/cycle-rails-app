class CreateSamples < ActiveRecord::Migration[6.0]
  def change
    create_table :samples do |t|
      t.string :type
      t.text :comment
      t.integer :product_id

      t.timestamps
    end
  end
end
