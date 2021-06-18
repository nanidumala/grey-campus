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

  test "should not save without name " do
    order=Order.new()
    assert order.errors[:name]
    order.name="harsha"
    assert order.errors[:name].none?
  end

  test "should not save with less information of address" do
    order=Order.new()
    order.address="hajd"
    assert order.errors[:address]
    order.address="near railway station  beside temple"
    assert order.errors[:address].none?
  end

end

