require 'rails_helper'

RSpec.describe ModeratorsController, type: :controller do

  # This should return the minimal set of attributes required to create a valid
  # Moderator. As you add validations to Moderator, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    { :first_name => "Old",
      :last_name => "McDonald",
      :email_address => "heart@mcdonalds.com",
      :username => "run0391",
      :password => :password
    }
  }

  let(:invalid_attributes) {
    { :first_name => nil }
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # ModeratorsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET #index" do
    it "assigns all moderators as @moderators" do
      moderator = Moderator.create! valid_attributes
      get :index, {}, session: valid_session
      expect(assigns(:moderators)).to eq([moderator])
    end
  end

  describe "GET #show" do
    it "assigns the requested moderator as @moderator" do
      moderator = Moderator.create! valid_attributes
      get :show, {id: moderator.to_param}, session: valid_session
      expect(assigns(:moderator)).to eq(moderator)
    end
  end

  describe "GET #new" do
    it "assigns a new moderator as @moderator" do
      get :new, {}, session: valid_session
      expect(assigns(:moderator)).to be_a_new(Moderator)
    end
  end

  describe "GET #edit" do
    it "assigns the requested moderator as @moderator" do
      moderator = Moderator.create! valid_attributes
      get :edit, {id: moderator.to_param}, session: valid_session
      expect(assigns(:moderator)).to eq(moderator)
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new Moderator" do
        expect {
          post :create, {moderator: valid_attributes}, session: valid_session
        }.to change(Moderator, :count).by(1)
      end

      it "assigns a newly created moderator as @moderator" do
        post :create, {moderator: valid_attributes}, session: valid_session
        expect(assigns(:moderator)).to be_a(Moderator)
        expect(assigns(:moderator)).to be_persisted
      end

      it "redirects to the created moderator" do
        post :create, {moderator: valid_attributes}, session: valid_session
        expect(response).to redirect_to(Moderator.last)
      end
    end

    context "with invalid params" do
      it "assigns a newly created but unsaved moderator as @moderator" do
        post :create, {moderator: invalid_attributes}, session: valid_session
        expect(assigns(:moderator)).to be_a_new(Moderator)
      end

      it "re-renders the 'new' template" do
        post :create, {moderator: invalid_attributes}, session: valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) { { :first_name => "new" } }

      it "updates the requested moderator" do
        moderator = Moderator.create! valid_attributes
        put :update, {id: moderator.to_param, moderator: new_attributes}, session: valid_session
        moderator.reload
        expect(response).to_not render_template("edit")
      end

      it "assigns the requested moderator as @moderator" do
        moderator = Moderator.create! valid_attributes
        put :update, {id: moderator.to_param, moderator: valid_attributes}, session: valid_session
        expect(assigns(:moderator)).to eq(moderator)
      end

      it "redirects to the moderator" do
        moderator = Moderator.create! valid_attributes
        put :update, {id: moderator.to_param, moderator: valid_attributes}, session: valid_session
        expect(response).to redirect_to(moderator)
      end
    end

    context "with invalid params" do
      it "assigns the moderator as @moderator" do
        moderator = Moderator.create! valid_attributes
        put :update, {id: moderator.to_param, moderator: invalid_attributes}, session: valid_session
        expect(assigns(:moderator)).to eq(moderator)
      end

      it "re-renders the 'edit' template" do
        moderator = Moderator.create! valid_attributes
        put :update, {id: moderator.to_param, moderator: invalid_attributes}, session: valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested moderator" do
      moderator = Moderator.create! valid_attributes
      expect {
        delete :destroy, {id: moderator.to_param}, session: valid_session
      }.to change(Moderator, :count).by(-1)
    end

    it "redirects to the moderators list" do
      moderator = Moderator.create! valid_attributes
      delete :destroy, {id: moderator.to_param}, session: valid_session
      expect(response).to redirect_to(moderators_url)
    end
  end

end
