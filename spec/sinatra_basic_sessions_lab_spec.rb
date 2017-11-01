describe App do

  describe 'GET /' do

    it 'sends a 200 status code' do
      get '/'
      expect(last_response.status).to eq(200)
    end

    it 'renders a form to purchase an item' do
      visit '/'
      expect(page).to have_selector("form")
      expect(page).to have_field(:debar)
    end
  end

  describe 'POST /checkout' do

    it "displays the shopping cart contents" do
      visit '/'

      fill_in(:debar, :with => "socks")
      click_button "submit"
      expect(page).to have_text("socks")
    end

    it "sets the params in the session hash" do
      params = {
        :debar => "socks"
      }
      post '/checkout', params
      expect(session.has_key?(:debar)).to eq(true)
      expect(session[:debar]).to eq(params[:debar])
    end
  end


end
