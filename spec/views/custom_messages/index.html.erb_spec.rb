require 'rails_helper'

RSpec.describe "custom_messages/index", type: :view do
  before(:each) do
    assign(:custom_messages, [
      CustomMessage.create!(
        :message => "Message"
      ),
      CustomMessage.create!(
        :message => "Message"
      )
    ])
  end

  it "renders a list of custom_messages" do
    render
    assert_select "tr>td", :text => "Message".to_s, :count => 2
  end
end
