require 'rails_helper'

describe Rest::RecipesController, type: :controller do
  render_views

  describe '#index' do
    subject { get :index, params: { format: :json } }

    before do
      create(:recipe, name: 'A - Item', servings: 3)
      create(:recipe, name: 'B - Item')
      create(:recipe, name: 'C - Item')
    end

    it 'returns properly' do
      subject
      expect(response).to be_ok
    end

    it 'returns a list' do
      subject
      expect(json_response!).to be_a(Array)
    end

    it 'returns all the items' do
      subject
      expect(json_response!.count).to eq(3)
    end

    it 'returns the fields of a item' do
      subject
      item = json_response!.first
      expect(item['name']).to eq('A - Item')
      expect(item['servings']).to eq(3)
    end
  end

  describe '#create' do
    subject { post :create, params: { format: :json, recipe: attributes_for(:recipe) } }

    let(:recipe) { build(:recipe) }

    context 'when unauthorized' do
      xit 'returns a 401' do
        subject
        expect(response.status).to eq 401
      end
    end

    context 'when authorized' do
      let(:headers) { { 'Authorization' => "Bearer #{token}" } }
      let(:token) { 'truuump' }

      before do
        request.headers.merge! headers
      end

      it 'returns a 201' do
        subject
        expect(response.status).to eq 201
      end

      it 'creates a new recipe' do
        expect do
          subject
        end.to change(Recipe, :count).by(1)
      end

      it 'returns a 422 if the recipe is invalid' do
        post :create, params: { format: :json, recipe: { name: '' } }
        expect(response.status).to eq 422
      end
    end
  end
end
