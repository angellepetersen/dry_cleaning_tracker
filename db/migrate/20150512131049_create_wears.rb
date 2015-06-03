class CreateWears < ActiveRecord::Migration
  def change
    create_table :wears do |t|
      t.integer :clothing_id

      t.timestamps

    end
  end
end
