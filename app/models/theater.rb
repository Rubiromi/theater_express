class Theater < ActiveRecord::Base
  has_and_belongs_to_many :plays
  validates :name, presence: true


  # if search
  #   find(:all, :conditions => ['name LIKE ?', "%#{search}%"])
  # else
  #   find(:all)
  # end
end
