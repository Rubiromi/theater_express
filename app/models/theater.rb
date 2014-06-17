class Theater < ActiveRecord::Base
  has_and_belongs_to_many :plays
  validates :name, presence: true

  def self.search(search)
    where('name ILIKE ?', "%#{search}%")
  end
end
