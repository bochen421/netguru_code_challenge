require 'rails_helper'

describe CitationsController do
  describe 'GET /citations' do
    before(:example) {get :index}

    it 'is a success' do
      expect(response).to have_http_status(:ok)
    end
  end

  describe 'POST /citations' do
    let(:citation_params) { attributes_for(:citation) }
    let(:valid_citation) { double(:citation, save: true) }
    let(:invalid_citation) { double(:citation, save: false) }

    context 'when citation is validated successfully' do
      before { allow(Citation).to receive(:new) { valid_citation } }

      it 'redirects to citations page' do
        post :create, params: { citation: citation_params }
        expect(response).to redirect_to citations_path
      end

      it 'displays success flash message' do
        post :create, params: { citation: citation_params }
        expect(flash[:success]).to be_present
      end
    end

    context 'when citation is not valid' do
      before { allow(Citation).to receive(:new) { invalid_citation } }

      it 'renders new' do
        post :create, params: { citation: citation_params }
        expect(response).not_to redirect_to citations_path
      end

      it 'displays danger flash message' do
        post :create, params: { citation: citation_params }
        expect(flash[:danger]).to be_present
      end
    end
  end
end
