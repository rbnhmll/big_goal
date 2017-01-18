require 'rails_helper'

RSpec.describe "profiles/index", type: :view do
  before(:each) do
    assign(:profiles, [
      Profile.create!(
        :name => "Name",
        :nickname => "Nickname",
        :include_custom_messages => false
      ),
      Profile.create!(
        :name => "Name",
        :nickname => "Nickname",
        :include_custom_messages => false
      )
    ])
  end

  it "renders a list of profiles" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Nickname".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
