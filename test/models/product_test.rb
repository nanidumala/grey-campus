require "test_helper"

class ProductTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "should not save without name" do
    product=Product.new(name: "LG")

    assert_not product.save
    assert product.errors[:name].none?
  end

  test "should not save with short description"  do
    product=Product.new( description: "dahfhggjsahjkds")

    assert_not product.save

    assert product.errors[:description].none?

  end

  test "should  not accept  with short description "  do
    product=Product.new()

    assert_not product.save

    #assert product.errors[:description].any?
    product.description="jkhdfjhsdjhfs"

     assert_not product.save

    assert product.errors[:description].none?
  end


  test "should not save with -ve price" do
    product=Product.new()
    product.price=-32

    assert product.invalid?

    assert product.errors[:price]

    product.price=32
     
    assert_not product.save

    assert product.errors[:price].none?
  end

  test "testing all validates " do
    product=Product.new()
    assert product.invalid?
    assert product.errors[:name].any?
    assert product.errors[:price].any?
    assert product.errors[:description].any?
    assert product.errors[:image].any?
  end
  



  
  

end
