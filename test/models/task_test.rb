require 'test_helper'

class TaskTest < ActiveSupport::TestCase
  def setup
    @milestone = milestones(:test_milestone)
    @task = Task.new(body: "I'm a new task yay!")
  end

  #Makes sure the milestone is valid
  test "should be valid" do
    assert @task.valid?
  end

  # Body Checks
  test "body should be present" do
    @task.body = nil
    assert_not @task.valid?
  end

  test "body should be less than or equal to 140 character" do
    @task.body = "a" * 141
    assert_not @task.valid?
  end
  
  # Complete Checks
  test "task complete should default to false" do
    if @task.complete == 0
      assert @task.valid?
    else
      assert_not @task.valid?
    end
  end

end
