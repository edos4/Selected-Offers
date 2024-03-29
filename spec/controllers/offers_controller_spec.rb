require 'rails_helper'

describe OffersController do
  describe '#index' do
    context 'when user is logged in' do
      it 'renders the index template' do
        user = FactoryBot.create(:user)
        sign_in user
        get :index
        expect(response).to render_template(:index)
      end
    end

    context 'when user is not logged in' do
      it 'redirects to login page' do
        get :index
        expect(response).to redirect_to(new_user_session_path)
      end
    end
  end
end
