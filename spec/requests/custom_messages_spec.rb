require 'rails_helper'

RSpec.describe "CustomMessages", type: :request do
  describe "GET /custom_messages" do
    it "works! (now write some real specs)" do
      get custom_messages_path
      expect(response).to have_http_status(200)
    end
  end
end
