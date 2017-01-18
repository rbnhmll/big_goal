require 'rails_helper'

RSpec.describe "goals/new", type: :view do
  before(:each) do
    assign(:goal, Goal.new(
      :goal_name => "MyString",
      :deadline_extended => false,
      :complete => false
    ))
  end

  it "renders new goal form" do
    render

    assert_select "form[action=?][method=?]", goals_path, "post" do

      assert_select "input#goal_goal_name[name=?]", "goal[goal_name]"

      assert_select "input#goal_deadline_extended[name=?]", "goal[deadline_extended]"

      assert_select "input#goal_complete[name=?]", "goal[complete]"
    end
  end
end
