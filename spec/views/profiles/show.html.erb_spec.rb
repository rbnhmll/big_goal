require 'rails_helper'

RSpec.describe "profiles/show", type: :view do
  before(:each) do
    @profile = assign(:profile, Profile.create!(
      :name => "Name",
      :nickname => "Nickname",
      :include_custom_messages => false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Nickname/)
    expect(rendered).to match(/false/)
  end
end
