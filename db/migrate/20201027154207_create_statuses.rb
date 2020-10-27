class CreateStatuses < ActiveRecord::Migration[6.0]
  def change
    create_table :statuses do |t|
      t.string :current_states
      t.string :next_action
      t.integer :sample_id
    

      t.timestamps
    end
  end
end
