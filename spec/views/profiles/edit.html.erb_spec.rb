require 'rails_helper'

RSpec.describe "profiles/edit", type: :view do
  before(:each) do
    @profile = assign(:profile, Profile.create!(
      :name => "MyString",
      :nickname => "MyString",
      :include_custom_messages => false
    ))
  end

  it "renders the edit profile form" do
    render

    assert_select "form[action=?][method=?]", profile_path(@profile), "post" do

      assert_select "input#profile_name[name=?]", "profile[name]"

      assert_select "input#profile_nickname[name=?]", "profile[nickname]"

      assert_select "input#profile_include_custom_messages[name=?]", "profile[include_custom_messages]"
    end
  end
end
