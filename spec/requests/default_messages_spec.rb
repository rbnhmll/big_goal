require 'rails_helper'

RSpec.describe "DefaultMessages", type: :request do
  describe "GET /default_messages" do
    it "works! (now write some real specs)" do
      get default_messages_path
      expect(response).to have_http_status(200)
    end
  end
end
