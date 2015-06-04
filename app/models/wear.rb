class Wear < ActiveRecord::Base
  validates :clothing_id, :presence => true

  belongs_to :clothing, :class_name => "Clothing", :foreign_key => "clothing_id"



  #def clothing
  #  return Clothing.find_by({ :id => self.clothing_id})
  #end

  #def wears
  #  return Clothing.find_by({ :id => self.wears_id})
  #end

  #def dry_clean
  #  return Dry_cleans.find_by({ :id => self.dry_clean_id})
  #end

end
