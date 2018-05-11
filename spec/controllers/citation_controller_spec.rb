require 'rails_helper'

describe CitationsController do
  describe 'POST #index' do
    it 'renders the index view'
  end

  describe 'POST #create' do
    context 'when citation is validated successfully' do
      it 'redirects to index page'
      # do
      #   expect(response).to redirect_to citations_path
      # end

      it 'displays success flash message'
      # do
      #   expect(flash[:success]).to be_present
      # end

      it 'displays newly added citation'
    end

    context 'when citation is not valid' do
      it 'renders new'
      # do
      #   expect(response).not_to redirect_to new_workshop_path
      #   # not_to?
      # end

      it 'displays danger flash message'
      # do
      #   expect(flash[:danger]).to be_present
      # end
    end
  end
end
