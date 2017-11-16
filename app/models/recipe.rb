class Recipe < ApplicationRecord
  validates :name, presence: true
  validates_numericality_of :servings, greater_than: 0

  enum difficulty: %i[easy medium difficult]

  has_and_belongs_to_many :categories
  has_many :quantities
  has_many :steps

  def duration
    steps.sum(&:duration)
  end
end
