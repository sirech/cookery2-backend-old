require 'rails_helper'

describe Step, type: :model do
  describe '#duration' do
    let(:recipe) { create(:recipe) }
    let(:step) { described_class.create(recipe: recipe, description: 'test', duration: 5) }

    it 'returns the duration for simple steps' do
      expect(step.duration).to eq(5)
    end

    it 'returns the duration of the related recipe' do
      other = create(:recipe)
      step.update_attribute(:related_id, other.id)
      expect(step.duration).to eq(0)
    end
  end
end
