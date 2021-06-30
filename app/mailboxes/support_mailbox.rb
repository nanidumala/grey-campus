class SupportMailbox < ApplicationMailbox
  def process
    last_order=Order.where(email: mail.from_address.to_s).last
    SupportRequest.create!(
      email: mail.from_address.to_s,
      subject: mail.subject,
      body: mail.body.to_s,
      order: last_order
    )
  end
end
