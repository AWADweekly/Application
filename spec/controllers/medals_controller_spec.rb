describe MedalController do
  describe "GET index" do
    it "assigns @medals" do
      medal = Medal.create
      get :index
      expect(assigns(:medals)).to eq([medal])
    end

    it "renders the index template" do
      get :index
      expect(response).to render_template("index")
    end
  end
end