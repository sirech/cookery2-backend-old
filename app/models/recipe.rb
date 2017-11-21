class Recipe < ApplicationRecord
  validates :name, presence: true
  validates_numericality_of :servings, greater_than: 0

  enum difficulty: %i[easy medium difficult]

  has_and_belongs_to_many :categories
  has_many :quantities, dependent: :delete_all
  has_many :steps, dependent: :delete_all

  def duration
    steps.sum(&:duration)
  end
end
