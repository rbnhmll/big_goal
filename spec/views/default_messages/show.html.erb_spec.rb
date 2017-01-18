require 'rails_helper'

RSpec.describe "default_messages/show", type: :view do
  before(:each) do
    @default_message = assign(:default_message, DefaultMessage.create!(
      :message => "Message"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Message/)
  end
end
