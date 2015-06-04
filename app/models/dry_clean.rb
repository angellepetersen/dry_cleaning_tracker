class DryClean < ActiveRecord::Base
  validates :clothing_id, :presence => true

  belongs_to :clothing, :class_name => "Clothing", :foreign_key => "clothing_id"


end
