class Ingredient < ApplicationRecord
  has_many :doses
  has_many :cocktails, through: :doses

  validates :name, presence: true, uniqueness: true

  before_destroy :can_destroy

  def can_destroy
    abort if self.cocktails.present?
    true
  end
end
