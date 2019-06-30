class Game < ApplicationRecord
  belongs_to :console
  validates :title, presence: true
  validates :title, uniqueness: true
  validates :price, presence: true

  MATURITY_RATINGS = ["M", "T", "E"]

  # def self.search(search)
  #   if search
  #     byebug
  #     find(:all, conditions: ['title LIKE ?', "%#{search}%"])
  #   else
  #     find(:all)
  #   end
  # end

end
