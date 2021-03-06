require 'rails_helper'

RSpec.describe "custom_messages/new", type: :view do
  before(:each) do
    assign(:custom_message, CustomMessage.new(
      :message => "MyString"
    ))
  end

  it "renders new custom_message form" do
    render

    assert_select "form[action=?][method=?]", custom_messages_path, "post" do

      assert_select "input#custom_message_message[name=?]", "custom_message[message]"
    end
  end
end
