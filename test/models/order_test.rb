require "test_helper"

class OrderTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "should not save with wrong mail" do
    order=Order.new()
      order.email="asdnand"
      assert order.errors[:email]
      order.email="harsha@gmail.com"
      assert order.errors[:email].none?
  end
end
