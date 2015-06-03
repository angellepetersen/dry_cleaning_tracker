class CreateDryCleans < ActiveRecord::Migration
  def change
    create_table :dry_cleans do |t|
      t.integer :clothing_id

      t.timestamps

    end
  end
end
