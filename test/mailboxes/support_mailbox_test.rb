require "test_helper"

class SupportMailboxTest < ActionMailbox::TestCase


  test "creation of support_request" do
    receive_inbound_email_from_mail(
      to: "sriharsha.dumala@gmail.com",
      from: "example@gmail.com",
      subject: "order track",
      body: "i want ot know where is order"
    )
    support_request=SupportRequest.last
    assert_equal "example@gmail.com", support_request.email
    assert_equal "order track", support_request.subject
    assert_equal "i want ot know where is order", support_request.body
    asset_nil support_request.order
  end
end
