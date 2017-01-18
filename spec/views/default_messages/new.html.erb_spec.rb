require 'rails_helper'

RSpec.describe "default_messages/new", type: :view do
  before(:each) do
    assign(:default_message, DefaultMessage.new(
      :message => "MyString"
    ))
  end

  it "renders new default_message form" do
    render

    assert_select "form[action=?][method=?]", default_messages_path, "post" do

      assert_select "input#default_message_message[name=?]", "default_message[message]"
    end
  end
end
