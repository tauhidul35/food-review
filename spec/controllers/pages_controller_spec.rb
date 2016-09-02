require 'rails_helper'

RSpec.describe PagesController, type: :controller do
  describe 'GET #home' do
    it 'successfully response home page' do
      get :home
      expect(response.status).to eq 200
    end
  end
end
