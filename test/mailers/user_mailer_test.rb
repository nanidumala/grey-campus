require "test_helper"

class UserMailerTest < ActionMailer::TestCase
  test "order_received" do
    mail = UserMailer.order_received
    assert_equal "Order received", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
