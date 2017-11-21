class Step < ApplicationRecord
  validates :description, presence: true
  validates_numericality_of :duration, greater_than_or_equal_to: 0

  belongs_to :recipe
  belongs_to :related, class_name: 'Recipe', optional: true

  def duration
    related_recipe? ? related.duration : read_attribute(:duration)
  end

  private

  def related_recipe?
    related.present?
  end
end
