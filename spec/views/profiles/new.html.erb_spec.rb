require 'rails_helper'

RSpec.describe "profiles/new", type: :view do
  before(:each) do
    assign(:profile, Profile.new(
      :name => "MyString",
      :nickname => "MyString",
      :include_custom_messages => false
    ))
  end

  it "renders new profile form" do
    render

    assert_select "form[action=?][method=?]", profiles_path, "post" do

      assert_select "input#profile_name[name=?]", "profile[name]"

      assert_select "input#profile_nickname[name=?]", "profile[nickname]"

      assert_select "input#profile_include_custom_messages[name=?]", "profile[include_custom_messages]"
    end
  end
end
