require 'rails_helper'

RSpec.describe "default_messages/index", type: :view do
  before(:each) do
    assign(:default_messages, [
      DefaultMessage.create!(
        :message => "Message"
      ),
      DefaultMessage.create!(
        :message => "Message"
      )
    ])
  end

  it "renders a list of default_messages" do
    render
    assert_select "tr>td", :text => "Message".to_s, :count => 2
  end
end
