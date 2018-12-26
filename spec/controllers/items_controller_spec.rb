require 'rails_helper'

describe ItemsController do
  describe 'GET #show' do

    context 'showアクションが動いた時' do
      before do
        @item = create(:item)
        get :show, params: { id: @item.id }
      end

        it 'リクエストが正常に送られるか' do
          expect(response.status).to eq(200)
        end

        it 'テンプレートが正常に送られるか' do
          expect(response).to render_template :show
        end

        it '@item変数が適切であるか' do
          expect(assigns(:item)).to eq @item
        end
    end
  end
end
