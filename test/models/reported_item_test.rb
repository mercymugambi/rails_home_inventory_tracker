require "test_helper"

class ReportedItemTest < ActiveSupport::TestCase
  test "should not save reported item without name" do
    reported_item = ReportedItem.new
    assert_not reported_item.save, "Saved the reported item without a name"
  end

  test "should save reported item with valid attributes" do
    reported_item = ReportedItem.new(name: "Example Item", status: "finished")
    assert reported_item.save, "Failed to save the reported item with valid attributes"
  end
end
