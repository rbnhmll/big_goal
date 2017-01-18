require 'rails_helper'

RSpec.describe "custom_messages/edit", type: :view do
  before(:each) do
    @custom_message = assign(:custom_message, CustomMessage.create!(
      :message => "MyString"
    ))
  end

  it "renders the edit custom_message form" do
    render

    assert_select "form[action=?][method=?]", custom_message_path(@custom_message), "post" do

      assert_select "input#custom_message_message[name=?]", "custom_message[message]"
    end
  end
end
