require 'rails_helper'

RSpec.describe "default_messages/edit", type: :view do
  before(:each) do
    @default_message = assign(:default_message, DefaultMessage.create!(
      :message => "MyString"
    ))
  end

  it "renders the edit default_message form" do
    render

    assert_select "form[action=?][method=?]", default_message_path(@default_message), "post" do

      assert_select "input#default_message_message[name=?]", "default_message[message]"
    end
  end
end
