require 'rails_helper'

RSpec.describe "custom_messages/show", type: :view do
  before(:each) do
    @custom_message = assign(:custom_message, CustomMessage.create!(
      :message => "Message"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Message/)
  end
end
