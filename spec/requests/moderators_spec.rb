require 'rails_helper'

RSpec.describe "Moderators", type: :request do
  describe "GET /moderators" do
    it "works! (now write some real specs)" do
      get moderators_path
      expect(response).to have_http_status(200)
    end
  end
end
