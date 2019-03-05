require 'test_helper'

class MilestoneTest < ActiveSupport::TestCase
  def setup
    @goal = goals(:test_goal)
    @milestone = Milestone.new(title: "Lorem ipsum", due_date: "2019-08-09", goal_id: @goal.id)
  end
  # Makes sure the milestone is valid
  test "should be valid" do
    assert @milestone.valid?
  end

  # :Title Checks
  test "title should be present" do
    @milestone.title = nil
    assert_not @milestone.valid?
  end

  test "title should be less than or equal to 140 characters" do
    @milestone.title = "a" * 141
    assert_not @milestone.valid?
  end

  # :Complete checks
  test "milestone complete should default to false" do
    if @milestone.complete == false
      assert @milestone.valid?
    else
      assert_not @milestone.valid?
    end
  end

  # :Due_date checks
  test "date should be present" do
    @milestone.due_date = nil
    assert_not @milestone.valid?
  end
end
