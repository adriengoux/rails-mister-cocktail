class Dose < ApplicationRecord
  belongs_to :ingredient
  belongs_to :cocktail

  validates :description, :ingredient_id, :cocktail_id, presence: true

  validates :cocktail, uniqueness: { scope: :ingredient }
end
