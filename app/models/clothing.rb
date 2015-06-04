class Clothing < ActiveRecord::Base

validates :max_no_wears, :presence => true
validates :description, :presence => true

belongs_to :user
has_many :wears
has_many :dry_cleans

end
