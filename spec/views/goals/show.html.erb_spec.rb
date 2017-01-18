require 'rails_helper'

RSpec.describe "goals/show", type: :view do
  before(:each) do
    @goal = assign(:goal, Goal.create!(
      :goal_name => "Goal Name",
      :deadline_extended => false,
      :complete => false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Goal Name/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
  end
end
