class CreateClothings < ActiveRecord::Migration
  def change
    create_table :clothings do |t|
      t.string :user_id
      t.boolean :needs_cleaning
      t.integer :max_no_wears
      t.string :description

      t.timestamps

    end
  end
end
