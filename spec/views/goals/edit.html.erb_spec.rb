require 'rails_helper'

RSpec.describe "goals/edit", type: :view do
  before(:each) do
    @goal = assign(:goal, Goal.create!(
      :goal_name => "MyString",
      :deadline_extended => false,
      :complete => false
    ))
  end

  it "renders the edit goal form" do
    render

    assert_select "form[action=?][method=?]", goal_path(@goal), "post" do

      assert_select "input#goal_goal_name[name=?]", "goal[goal_name]"

      assert_select "input#goal_deadline_extended[name=?]", "goal[deadline_extended]"

      assert_select "input#goal_complete[name=?]", "goal[complete]"
    end
  end
end
