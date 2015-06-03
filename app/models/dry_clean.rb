class DryClean < ActiveRecord::Base


  belongs_to :clothing, :class_name => "Clothing", :foreign_key => "clothing_id"


end
