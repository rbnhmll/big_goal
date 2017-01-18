require 'rails_helper'

RSpec.describe "goals/index", type: :view do
  before(:each) do
    assign(:goals, [
      Goal.create!(
        :goal_name => "Goal Name",
        :deadline_extended => false,
        :complete => false
      ),
      Goal.create!(
        :goal_name => "Goal Name",
        :deadline_extended => false,
        :complete => false
      )
    ])
  end

  it "renders a list of goals" do
    render
    assert_select "tr>td", :text => "Goal Name".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
